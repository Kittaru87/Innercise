  # frozen_string_literal: true

class WorkoutsController < ApplicationController
  include WorkoutsHelper

  def show
  @workout_id = params[:id]
  # @next_page = params[:nextPageToken]
  retrieve_videos(@workout_id, "")
  end

  def update
    @next_page = params[:nextPageToken]
    puts @next_page
    @workout_id = params[:id]
    puts @workout_id
    retrieve_videos(@workout_id, @next_page)
    puts @workouts
    redirect_to workout_path(@workout_id)
  end

private 

  def retrieve_videos(workout_id, next_page)
    videos = api_call(workout_id, next_page)
    @workouts = pull_video_info(videos)
  end
  
end
