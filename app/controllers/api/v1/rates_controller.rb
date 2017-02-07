class Api::V1::RatesController < Api::V1::ApiController
  def create 
    begin
      talk = Talk.find(params[:talk_id])
      talk_rate= TalkRate.new(rate: params[:rate], comment: params[:comment], talk_id: talk.id, user_name: params[:user_name]) 
      if talk_rate.save
        render json: { success: true, rate: talk_rate }, status: 201
      else
        render json: '{"success":false, "message":"Something went wrong"}', status: 505
      end
    rescue Exception => ex
      render json: '{"success":false, "message":"Invalid request"}', status: 505
    end
  end
end
