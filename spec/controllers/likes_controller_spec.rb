# frozen_string_literal: true

require 'rails_helper'

RSpec.describe LikesController, type: :controller do
  before(:each) do
    @user = User.create { :user }
    @workout = Workout.create { :workout }
    @like = Like.create(user_id: @user.id, workout_id: @workout.id)
  end

  describe 'GET #index' do
    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end
  end

  it 'creates a like' do
    expect(@like).to be_a_new(Like)
  end
end
