# frozen_string_literal: true

class AccountsController < ApplicationController
  include AccountsHelper

  def profile
    @all_workouts = Like.where(user_id: current_user.id)
    @week_workouts = CompletedWorkout.where(user_id: current_user.id).where('created_at >= ?', 1.week.ago)
  end

  def show_liked_video
    @videoId = params[:videoId]
    @body_id = params[:id]
    session[:workouts] = pull_liked_video_info(@body_id, @videoId)
    redirect_to workout_path(@body_id)
  end

  private

  def sign_up_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :current_password)
  end
end
