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
      redirect_to job_path(@job)
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

  def job_params
    params.require(:job).permit(:location, :date, :description, :title, :status, :skill_id)
  end
end
