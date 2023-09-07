class Api::AppointmentsController < ApplicationController
  def index
    @array = Window.all
    @windows = Array.new
    @array.each do |w|
      attributes = w.attributes
      attributes[:master_name] = w.master.name
      @windows.push attributes
    end
    render json: @windows
  end
end
