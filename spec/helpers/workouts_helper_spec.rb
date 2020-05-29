# frozen_string_literal: true

require 'rails_helper'

describe WorkoutsHelper do
  describe 'api call method' do
    it 'should not raise an error when making an api call' do
      workout = 'arms'
      expect { helper.api_call(workout) }.to_not raise_error, response.body
    end
  end

  describe 'pull video info method' do
    it 'should return a nested array of video information' do
      workout = 'arms'
      response = helper.api_call(workout)
      expect(pull_video_info(workout, response)).to eq [{ 'bodyId' => 'arms', 'channel' => 'mock channel', 'description' => 'test', 'title' => 'mock video', 'videoId' => '12345' }]
    end
  end
end
