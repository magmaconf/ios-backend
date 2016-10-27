class Api::V1::EventsController < Api::V1::ApiController
  # GET /v1/events
  def index
    render json: Event.all
  end
end
