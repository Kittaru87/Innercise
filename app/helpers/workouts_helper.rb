# frozen_string_literal: true

require 'google/apis/youtube_v3'

module WorkoutsHelper
  include HTTParty

  # URL API call for top 10 apartment friendly various workouts with environmental key
  # "https://www.googleapis.com/youtube/v3/search?part=snippet&maxResults=10&q=workout%2C%20#{workout}%2C%20apartment-friendly&key=#{api_key}"

  BASE_URL = 'https://www.googleapis.com/youtube/v3/search?'
  VIEW = 'part=snippet&'
  RESULT_NO = 'maxResults=10&'
  PERM_SEARCH_PARAMS = 'q=workout%2C%20apartment-friendly%2C%20'
  API_PARTIAL_URL = "key=#{ENV['YT_API_KEY']}"

  def api_call(workout)
    workout_params = "#{workout}&"

    response = HTTParty.get(BASE_URL + VIEW + RESULT_NO + PERM_SEARCH_PARAMS + workout_params + API_PARTIAL_URL).to_json

    response_hash = JSON.parse(response)
  end

  def pull_video_info(_response_hash)
    if Rails.env.test?
      mock_video_array
    else
      video_array
    end
  end

  private

  def video_array
    video_array = []
    response_hash['items'].each do |video|
      video_array << {
        'videoId' => video['id']['videoId'],
        'title' => video['snippet']['title'],
        'description' => video['snippet']['description'],
        'channel' => video['snippet']['channelTitle']
      }
    end
    video_array
  end

  def mock_video_array
    video_array = [{
      'videoId' => '12345',
      'title' => 'mock video',
      'description' => 'test',
      'channel' => 'mock channel'
    }]
  end
end

# Example of JSON
#   { "kind"=>"youtube#searchResult",
#     "etag"=>"Tc436ZKRIDGOYwDagkJ_RtM0EdE",
#     "id"=>{
#       "kind"=>"youtube#video",
#       "videoId"=>"V1Yc8JZlHKM"},
#     "snippet"=>{
#       "publishedAt"=>"2020-04-12T15:00:17Z",
#       "channelId"=>"UCIJwWYOfsCfz6PjxbONYXSg",
#       "title"=>"Toned Arms at Home Workout! Apartment Friendly ☺️",
#       "description"=>"I asked you guys what workouts you wanna do at home and a lot of you asked for weights. And because not everyone has dumbbells, I decided to get creative.",
#         "thumbnails"=>{
#           "default"=>{
#             "url"=>"https://i.ytimg.com/vi/V1Yc8JZlHKM/default.jpg",
#             "width"=>120,
#             "height"=>90
#           },
#           "medium"=>{
#             "url"=>"https://i.ytimg.com/vi/V1Yc8JZlHKM/mqdefault.jpg",
#             "width"=>320,
#             "height"=>180
#           },
#           "high"=>{
#             "url"=>"https://i.ytimg.com/vi/V1Yc8JZlHKM/hqdefault.jpg",
#             "width"=>480,
#             "height"=>360
#           }
#         },
#       "channelTitle"=>"blogilates",
#       "liveBroadcastContent"=>"none",
#       "publishTime"=>"2020-04-12T15:00:17Z"
#     }
#   }
