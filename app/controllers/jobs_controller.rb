class JobsController < ApplicationController
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

  private

  def create_payment
    @amount = 6000
    @session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: "#{@job.title} by #{@job.handylady.name}",
        images:[],# [ coudinary image tag with @job.handylady.photo.key ],
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
