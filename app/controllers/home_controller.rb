class HomeController < ApplicationController

  def index
    @shows = Show.where( display: true )
    @archives = Show.where( display: false )
    @abouts = About.first
    @co_operation = CoOperation.first
    @course = Course.first
  end
end
