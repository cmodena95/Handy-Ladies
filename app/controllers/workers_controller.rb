class WorkersController < ApplicationController

  def show
    # @user = User.find(params[:id])
  end
  def index
    @workers = User.handyladies

  end
end
