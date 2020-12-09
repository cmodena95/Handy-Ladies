class WorkersController < ApplicationController
  def index
    @workers = User.handyladies
  end
end
