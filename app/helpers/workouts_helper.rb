# frozen_string_literal: true
require 'google/apis/youtube_v3'


module WorkoutsHelper

  def api_call(workout)

  api_key = ENV['YT_API_KEY']  
    #URL API call for top 10 apartment friendly arms workout
    "https://www.googleapis.com/youtube/v3/search?part=snippet&maxResults=10&q=workout%2C%20arms%2C%20apartment-friendly&key=ENV['YT_API_KEY']"

  #URL API call for top 10 apartment friendly various workouts with environmental key
  "https://www.googleapis.com/youtube/v3/search?part=snippet&maxResults=10&q=workout%2C%20#{workout}%2C%20apartment-friendly&key=#{api_key}"

  end
end
