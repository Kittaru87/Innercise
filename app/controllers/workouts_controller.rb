# frozen_string_literal: true

class WorkoutsController < ApplicationController
  include WorkoutsHelper

  def show
    # @workouts = session[:workouts]
    @body_id = params[:id]
    if session[:workouts].nil? || @body_id != session[:workouts][0]["bodyId"]
      p "retrieve_videos(@body_id, '')"
      retrieve_videos(@body_id, '')
    # else
    #   p "@workouts"
    #   @workouts
    end
    @workouts = Workout.find_by(videoId: session[:workouts][0]["videoId"])
  end

  def update
    @next_page = params[:nextPageToken]
    @body_id = params[:id]
    retrieve_videos(@body_id, @next_page)
    @workouts = Workout.find_by(videoId: session[:workouts][0]["videoId"])
    redirect_to workout_path(@body_id)
  end

  private

  def retrieve_videos(body_id, next_page)
    videos = api_call(body_id, next_page)
    session[:workouts] = pull_video_info(body_id, videos)
    p session[:workouts]
  end
end
