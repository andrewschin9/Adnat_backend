class Api::ShiftsController < ApplicationController
  before_action :authenticate_user, only: [:create, :index, :destroy]
  def create
    require 'bigdecimal'
    require 'bigdecimal/util'
    @shift = Shift.new(
      employee_id: current_user.id,
      organization_id: params[:organization_id],
      shift_date: params[:shift_date],
      start_time: params[:start_time],
      finish_time: params[:finish_time],
      break_length: params[:break_length],
      employee_name: current_user.name,
      length: (Time.parse(params[:finish_time])-Time.parse(params[:start_time]))/3600.0 - (params[:break_length].to_d/60),
      wage: (Organization.find_by(id: params[:organization_id]).hourly_rate).to_d * ((Time.parse(params[:finish_time])-Time.parse(params[:start_time]))/3600.0 - (params[:break_length].to_d/60.0)).to_d,
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


# Organization.find_by(id: params[:organization_id]).hourly_rate.to_d * (Time.parse(params[:finish_time])-Time.parse(params[:start_time]))/3600 - 