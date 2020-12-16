class ReviewsController < ApplicationController
  before_action :set_job

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @review.job = @job

    if @review.save
      redirect_to worker_path(@job.handylady)
    else
      flash[:alert] = "Something went wrong."
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:title, :description, :star_rating)
  end

  def set_job
    @job = Job.find(params[:job_id])
  end
end
