class StoresController < ApplicationController

  def index
    @stores = Store.alphabetical.all
    render json: StoreSerializer.new(@stores).serialized_json
  end

  def show
    @store = Store.find(params[:id])
    render json: StoreSerializer.new(@store).serialized_json
  end

  def shifts
    @store = Store.find(params[:id])
    @upcoming_shifts = @store.shifts.upcoming
    render json: @shifts
  end

end