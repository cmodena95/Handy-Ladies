class JobsController < ApplicationController
  def index
    if current_user.handylady?
      @upcoming_jobs = current_user.handylady_jobs
      @hired_jobs = current_user.customer_jobs
    else
      @jobs = current_user.customer_jobs
    end
  end

  def new
    @worker = User.find(params[:worker_id])
    @job = Job.new
  end

  def show
    @job = Job.find(params[:id])
  end

  def create
    @worker = User.find(params[:worker_id])
    @job = Job.new(job_params)
    @job.handylady = @worker
    @job.customer = current_user
    @job.status = "pending"
    if @job.save
      create_payment
    else
      render :new
    end
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy

    redirect_to jobs_path
  end

  def update
    @job = Job.find(params[:id])
    @job.update(job_params)

    redirect_to jobs_path
  end

  private

  def create_payment
    @amount = @job.handylady.hourly_price.to_i * 100
    @job_title =  "#{@job.title} by "
    image_options = { width: 150, height: 150, crop: :fill }
    @image_path = Cloudinary::Utils.cloudinary_url(@job.handylady.photo.key, image_options)
    @session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: @job_title,
        images:[ @image_path ],
        amount: @amount,
        currency: 'eur',
        quantity: 1
      }],
      success_url: job_url(@job),
      cancel_url: job_url(@job)
    )

    @payment = Payment.create(
      job: @job,
      user: current_user,
      amount: @amount,
      status: nil,
      checkout_session_id: @session.id
    )
  end

  def job_params
    params.require(:job).permit(:location, :date, :description, :title, :status, :skill_id)
  end
end
