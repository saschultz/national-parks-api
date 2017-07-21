class ParksController < ApplicationController

  def index
    @parks = Park.all
    json_response(@parks)
  end

  def show
    @park = Park.find(params[:id])
    json_response(@park)
  end

  def create
    @park = Park.create!(park_params)
    json_response(@park, :accepted)
  end

  def update
    @park = Park.find(params[:id])
    if @park.update!(park_params)
      render status: 200, json: {
        message: 'Park was successfully updated.'
      }
    end
  end

  def destroy
    @park = Park.find(params[:id])
    @park.destroy
  end

  # CUSTOM ROUTES
  def search
    location = params[:location]
    @parks = Park.search(location)
    json_response(@parks)
  end

  private

  def json_response(object, status = :ok)
    render json: object.as_json(include: :hikes), status: status
  end

  def park_params
    params.permit(:name, :location, :free_entrance_days)
  end
end
