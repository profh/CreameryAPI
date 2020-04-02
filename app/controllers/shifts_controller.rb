class ShiftsController < ApplicationController

  def upcoming
    @store = Store.find(params[:id])
    @upcoming_shifts = @store.shifts.upcoming.chronological
    render json: ShiftUpcomingSerializer.new(@upcoming_shifts).serialized_json
  end

  def show
    @shift = Shift.find(params[:id])
    render json: ShiftSerializer.new(@shift).serialized_json
  end

end