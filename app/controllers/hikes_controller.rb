class HikesController < ApplicationController

  def index
    @park = Park.find(params[:id])
    json_response(@park.reviews)
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

end
