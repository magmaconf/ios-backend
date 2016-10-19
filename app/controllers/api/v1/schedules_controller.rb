class Api::V1::SchedulesController < Api::V1::ApiController
  # GET /v1/speakers
  def index
    render json: Schedule.all
  end
end
