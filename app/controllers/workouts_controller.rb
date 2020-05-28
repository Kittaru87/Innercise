  # frozen_string_literal: true

class WorkoutsController < ApplicationController
  include WorkoutsHelper

  def show
    @workouts = session[:workouts]
    @workout_id = params[:id]
    if @workouts.empty? || @workout_id != @workouts[0]["bodyId"]
      retrieve_videos(@workout_id, "")
    else 
      @previous_page = @workouts[0]["prevPageToken"]
      @workouts
    end
  end

  def update
    @next_page = params[:nextPageToken]
    @previous_page = params[:prevPageToken]
    @workout_id = params[:id]
    retrieve_videos(@workout_id, @next_page)
    session[:workouts] = @workouts
    redirect_to workout_path(@workout_id)
  end

private 

  def retrieve_videos(workout_id, next_page)
    videos = api_call(workout_id, next_page)
    @workouts = pull_video_info(workout_id, videos)
  end

end
