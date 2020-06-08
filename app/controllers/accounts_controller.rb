# frozen_string_literal: true

class AccountsController < ApplicationController
  include AccountsHelper

  def profile
    @all_workouts = Like.where(user_id: current_user.id) 
  end


  def show_liked_video
    @videoId = params[:videoId]
    @body_id = params[:id]
    puts @videoId
    puts @body_id
    # if @workouts.nil? || @workouts.empty? || @body_id != @workouts[0]['bodyId']
    #   retrieve_videos(@body_id, '')
    # else
    pull_liked_video_info(@body_id, @videoId)
    session[:workouts] = @workouts
    redirect_to profile_path(@body_id)
    # end
  end
  
  private

  def sign_up_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :current_password)
  end
end
