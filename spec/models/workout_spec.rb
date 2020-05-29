# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Workout, type: :model do
  subject(:workout) { described_class.new(
      id: 1,
      bodyId: "arms",
      videoId: '12345',
      title: 'fake workout',
      description: 'fake description',
      channel: 'Fake channel'
    )
  }

  it 'is not valid without a bodyId' do
    workout.bodyId = nil
    expect(workout).to_not be_valid
  end

  it 'is not valid without a videoId' do
    workout.videoId = nil
    expect(workout).to_not be_valid
  end

  it 'is not valid without a title' do
    workout.title = nil
    expect(workout).to_not be_valid
  end

  it 'is not valid without an description' do
    workout.description = nil
    expect(workout).to_not be_valid
  end

  it 'is valid without a channel' do
    workout.channel = nil
    expect(workout).to_not be_valid
  end
end