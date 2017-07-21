class ParksController < ApplicationController

  def index
    @parks = Park.all
    json_response(@parks)
  end

  private
  def json_response(object, status = :ok)
    render json: object.as_json(include: :hikes), status: status
  end
end
