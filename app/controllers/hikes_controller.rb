class HikesController < ApplicationController

  def index
    @park = Park.find(params[:park_id])
    json_response(@park.hikes)
  end

  def show
    @hike = Hike.find(params[:id])
    json_response(@hike)
  end

  def create
    @park = Park.find(params[:park_id])
    @hike = @park.hikes.create!(hike_params)
    json_response(@hike.park, :created)
  end

  def update
    @hike = Hike.find(params[:id])
    if @hike.update!(hike_params)
      render status: 200, json: {
        message: 'Hike successfully updated.'
      }
    end
  end

  def destroy
    @hike = Hike.find(params[:id])
    if @hike.destroy
      render status: 200, json: {
        message: 'Hike successfully deleted.'
      }
    end
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def hike_params
    params.permit(:name, :miles, :difficulty)
  end

end
