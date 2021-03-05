class WorkersController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def show
    @user = User.find(params[:id])
  end

  def index
    @workers = User.handyladies

    if params[:query]
      @workers = @workers.includes(:skills).where(skills: {name: params[:query]})
    end
  end
end
