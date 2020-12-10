class JobsController < ApplicationController
    def new
      @worker = User.find(params[:worker_id])
      @job = Job.new
    end
end
