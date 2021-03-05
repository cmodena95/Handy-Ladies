class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :splash ]

  def home
  end

  def splash
  end
end
