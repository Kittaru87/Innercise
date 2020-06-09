# frozen_string_literal: true

class LikesController < ApplicationController
  before_action :find_workout

  def index
    @likes = Like.all
  end

  def create
    if already_liked?
      flash[:notice] = "You can't like a workout more than once"
    else
      @workout = Like.create(user_id: current_user.id, workout_id: params[:workout_id])
    end
    redirect_to workout_path(@found_workout['bodyId'])
  end

  def destroy
    Like.destroy(params[:id])
    redirect_to profile_path(username: current_user.username)
  end

  def top_5
    @popular = Like.popular
  end

  private

  def find_workout
    @found_workout = Workout.find(params[:workout_id])
  end

  def already_liked?
    Like.where(user_id: current_user.id, workout_id: params[:workout_id]).exists?
  end
end
