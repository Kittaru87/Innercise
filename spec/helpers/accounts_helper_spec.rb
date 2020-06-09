# frozen_string_literal: true

require 'rails_helper'

describe AccountsHelper do
  describe 'pull liked video info method' do
    it 'should return a nested array of liked video information' do
      bodyId = 'arms'
      videoId = '12345'
      expect(pull_liked_video_info(bodyId, videoId)).to eq [{ 'bodyId' => 'arms', 'channel' => 'mock channel', 'description' => 'test', 'title' => 'mock video', 'videoId' => '12345' }]
    end
  end
end
