class Api::V1::RatesController < Api::V1::ApiController
  def create 
    begin
      talk = Talk.find(params[:talk_id])
      rate_talk = TalkRate.new(rate: params[:rate], comment: params[:comment], talk_id: talk.id) 
      if rate_talk.save
        render json: rate_talk, status: 201
      else
        puts working_time.errors.full_message
        render json: '{"success":false, "message":"Something went wrong"}', status: 505
      end
    rescue Exception => ex
      puts ex.message
      render json: '{"success":false, "message":"Invalid request"}', status: 505
    end
  end
end
