class HomeController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index]

  def index
    @shows = Show.where( display: true )
    @archives = Show.where( display: false )
    @abouts = About.first
    @co_operation = CoOperation.first
    @course = Course.first
  end
end
