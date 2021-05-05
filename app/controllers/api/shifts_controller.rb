class Api::ShiftsController < ApplicationController
  def create
    @shift = Shift.new(
      employee_id: params[:employee_id],
      organization_id: params[:organization_id],
      shift_date: params[:shift_date],
      start_time: params[:start_time],
      finish_time: params[:finish_time],
      break_length: params[:break_length],
    )
    if @shift.save
      render "show.json.jbuilder"
    else
      render json: {errors: @shift.errors.full_messages}, status: :bad_request
    end
  end

  def index
    @shifts = Shift.all
    render "index.json.jbuilder"
  end

  def destroy
    @shift = Shift.find_by(id: params[:id])
    @shift.destroy
    render json: {message: "Shift successfully removed!"}
  end  
end
