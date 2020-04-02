class ShiftsController < ApplicationController

  def index
    @shifts = Shift.all
    render json: @shifts
  end

  def show
    @shift = Shift.find(params[:id])
    render json: @shift
  end

end