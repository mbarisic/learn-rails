class VisitorsController < ApplicationController
  def new
    @owner = Owner.new
    flash.now[:notice] = "Notice this flash msg!"
    flash.now[:alert] = "This is one alert notice!"
  end
end
