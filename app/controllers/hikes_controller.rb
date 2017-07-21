class HikesController < ApplicationController

  def index
    @park = Park.find(params[:park_id])
    json_response(@park.hikes)
  end

  def show
    @hike = Hike.find(params[:id])
    json_response(@hike)
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

end
