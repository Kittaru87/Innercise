# frozen_string_literal: true

require 'rails_helper'

RSpec.describe WorkoutsController, type: :controller do
  it { is_expected.to be }

  it 'workout has a title' do
    workout = Workout.new(title: "Workout")
    expect(workout.title).to eq "Workout"
  end

  it 'workout  has a description' do
    workout = Workout.new(description: "I am a workout")
    expect(workout.description).to eq "I am a workout"
  end

  it 'workout has a videoID' do
    workout = Workout.new(videoId: "12345")
    expect(workout.videoId).to eq "12345"
  end

  describe 'GET #index' do
    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end
  end

end
