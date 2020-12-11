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
      redirect_to job_path(@job)
    else
      render :new
    end
  end

  private

  def job_params
    params.require(:job).permit(:location, :date, :description, :title, :status, :skill_id)
  end
end
