class Api::OrganizationsController < ApplicationController
  def create
    @organization = Organization.new(
      name: params[:name],
      hourly_rate: params[:hourly_rate],
    )
    if @organization.save
      render "show.json.jbuilder"
    else
      render json: {errors: @organization.errors.full_messages}, status: :bad_request
    end
  end

  def index
    @organizations = Organization.all
    render "index.json.jbuilder"
  end
end
