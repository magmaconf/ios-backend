class Api::V1::SpeakersController < Api::V1::ApiController
  # GET /v1/speakers
  def index
    render json: Speaker.all
  end
end
