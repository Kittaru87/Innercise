# frozen_string_literal: true

require 'rails_helper'

RSpec.describe AccountsController, type: :controller do
  before(:each) do
    @user = User.create { :user }
    @workout = Workout.create { :workout }
  end

  describe 'GET #index' do
    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end
  end

  it 'should have a current_user' do
    expect(@user).to_not eq(nil)
  end

  # describe 'PUT show liked videos' do
  #   it 'should return a nested array of liked video information' do
  #     id = "arms"
  #     @videoId = '12345'
  #     expect(subject.show_liked_video).to eq [{ 'bodyId' => 'arms', 'channel' => 'mock channel', 'description' => 'test', 'title' => 'mock video', 'videoId' => '12345' }]
  #   end
  # end
end
