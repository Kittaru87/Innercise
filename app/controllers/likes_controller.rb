# frozen_string_literal: true

class LikesController < ApplicationController
  before_action :find_workout

  def create
    find_like
    if already_liked?
      unlike
    else
      like
    end
    redirect_to workout_path(@found_workout['bodyId'])
  end

  private

  def find_workout
    @found_workout = Workout.find(params[:workout_id])
  end

  def find_like
    @like = Like.where(user_id: current_user.id, workout_id: params[:workout_id])
  end

  def like
    Like.create(user_id: current_user.id, workout_id: params[:workout_id])
  end

  def unlike
    Like.destroy(@like[0].id)
  end

  def already_liked?
    Like.where(user_id: current_user.id, workout_id: params[:workout_id]).exists?
  end
end
