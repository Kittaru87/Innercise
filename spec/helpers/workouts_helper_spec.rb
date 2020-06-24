# frozen_string_literal: true

require 'rails_helper'
require 'webmock/rspec'

describe WorkoutsHelper do
  before(:each) do
    stub_request(:get, "https://www.googleapis.com/youtube/v3/search?key=#{ENV['YT_API_KEY']}&maxResults=1&pageToken=&part=snippet&q=workout,%20home,%20arms").
       with(
         headers: {
        'Accept'=>'*/*',
        'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
        'User-Agent'=>'Ruby'
         }).
       to_return(status: 200, body: "", headers: {"kind"=>"youtube#searchResult", "id"=>{"kind"=>"youtube#video"}})
  end

  describe 'api call method' do
    it 'should not raise an error when making an api call' do
      workout = 'arms'
      expect { helper.api_call(workout) }.to_not raise_error, response.body
    end
  end

  describe 'pull video info method' do
    it 'should return a nested array of video information' do
      workout = 'arms'
      expect(helper.api_call(workout)).to eq({"kind"=>["youtube#searchResult"]})
    end
  end
end
