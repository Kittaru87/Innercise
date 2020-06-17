# frozen_string_literal: true

class LikesController < ApplicationController
  include LikesHelper
  before_action :find_workout

  def create
    if already_liked?
      flash[:notice] = "You can't add a workout to your profile more than once"
    else
      @workout = Like.create(user_id: current_user.id, workout_id: params[:workout_id])
    end
    # redirect_to workout_path(@found_workout['bodyId'])
  end

  def destroy
    Like.destroy(params[:id])
    redirect_to profile_path(username: current_user.username)
  end

  # def show_liked_video
  #   @videoId = params[:videoId]
  #   @body_id = params[:id]
  #   session[:workouts] = pull_liked_video_info(@body_id, @videoId)
  #   redirect_to workout_path(@body_id)
  # end

  private

  def find_workout
    @found_workout = Workout.find(params[:workout_id])
  end

  def already_liked?
    Like.where(user_id: current_user.id, workout_id: params[:workout_id]).exists?
  end
end
