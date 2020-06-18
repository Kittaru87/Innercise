# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CompletedWorkoutsController, type: :controller do
  before(:each) do
    @user = User.create { :user }
    @workout = Workout.create { :workout }
  end
  
  describe 'GET #index' do
  it 'returns http success' do
    expect(response).to have_http_status(:success)
  end
end

describe 'POST #create' do
  it 'creates a new completed workout' do
      @completed_workout = CompletedWorkout.create(user_id: @user.id, workout_id: @workout.id)
      expect(@completed_workout).to be_a_new(CompletedWorkout)
    end
  end

end
