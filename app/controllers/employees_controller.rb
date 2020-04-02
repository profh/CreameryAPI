class EmployeesController < ApplicationController

  def index
    @employees = Employee.active.alphabetical.all
    render json: EmployeeSerializer.new(@employees).serialized_json
  end

  def spotlight
    @employee = Employee.find(params[:id])
    render json: EmployeeSpotlightSerializer.new(@employee).serialized_json
  end

end