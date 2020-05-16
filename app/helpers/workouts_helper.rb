# frozen_string_literal: true
require 'google/apis/youtube_v3'


module WorkoutsHelper
  include HTTParty

  #URL API call for top 10 apartment friendly various workouts with environmental key
  # "https://www.googleapis.com/youtube/v3/search?part=snippet&maxResults=10&q=workout%2C%20#{workout}%2C%20apartment-friendly&key=#{api_key}"
  
  BASE_URL = "https://www.googleapis.com/youtube/v3/search?"
  VIEW = "part=snippet&"
  RESULT_NO = "maxResults=10&"
  PERM_SEARCH_PARAMS = "q=workout%2C%20apartment-friendly%2C%20"
  API_PARTIAL_URL = "key=#{ENV['YT_API_KEY']}"
  
  def api_call(workout)
    workout_params = "#{workout}&"

    response = HTTParty.get(BASE_URL+VIEW+RESULT_NO+PERM_SEARCH_PARAMS+workout_params+API_PARTIAL_URL).to_json

    response_hash = JSON.parse(response)
  end
  
end
