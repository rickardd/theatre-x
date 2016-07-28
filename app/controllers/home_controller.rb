class HomeController < ApplicationController

  def index
    @shows = Show.all
    @abouts = About.first
    @co_operation = CoOperation.first
    @course = Course.first
  end
end
