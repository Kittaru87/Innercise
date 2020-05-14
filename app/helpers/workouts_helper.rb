# frozen_string_literal: true
require 'google/apis/youtube_v3'


module WorkoutsHelper

  BASE_URL = "https://www.googleapis.com/youtube/v3/search?"
  # view: "part=snippet&"
  # No. of results: "maxResults=10&"
  # Start of search params: "q="
  # Permanent search params: "workout%2C%20apartment-friendly%2C%20"
  # Search params: "#{workout}&"
  API_PARTIAL_URL = "key=#{ENV['YT_API_KEY']}"
  
  def api_call(workout)

  #URL API call for top 10 apartment friendly various workouts with environmental key
  "https://www.googleapis.com/youtube/v3/search?part=snippet&maxResults=10&q=workout%2C%20#{workout}%2C%20apartment-friendly&key=#{api_key}"



  end
end
