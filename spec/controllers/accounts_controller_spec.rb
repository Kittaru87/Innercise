# frozen_string_literal: true

require 'rails_helper'

RSpec.describe AccountsController, type: :controller do
  describe 'GET #index' do
    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end
  end

  # describe 'pull liked video info method' do
  #   it 'should return a nested array of liked video information' do
  #     id = "arms"
  #     @videoId = '12345'
  #     expect(subject.show_liked_video).to eq [{ 'bodyId' => 'arms', 'channel' => 'mock channel', 'description' => 'test', 'title' => 'mock video', 'videoId' => '12345' }]
  #   end
  # end
end
