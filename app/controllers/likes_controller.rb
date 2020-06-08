# frozen_string_literal: true

class LikesController < ApplicationController
  before_action :find_workout

  def create
    if already_liked?
      flash[:notice] = "You can't like a workout more than once"
    else
      @workout = Like.create(user_id: current_user.id, workout_id: params[:workout_id])
    end
    redirect_to workout_path(@found_workout['bodyId'])
  end

  private

  def find_workout
    @found_workout = Workout.find(params[:workout_id])
  end

  def already_liked?
    Like.where(user_id: current_user.id, workout_id: params[:workout_id]).exists?
  end
end
