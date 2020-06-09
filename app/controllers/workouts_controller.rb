# frozen_string_literal: true

class WorkoutsController < ApplicationController
  include WorkoutsHelper

  def show
    @workouts = session[:workouts]
    @body_id = params[:id]
    if @workouts.nil? || @workouts.empty? || @body_id != @workouts[0]['bodyId']
      retrieve_videos(@body_id, '')
    else
      @workouts
    end
  end

  def update
    @next_page = params[:nextPageToken]
    @body_id = params[:id]
    retrieve_videos(@body_id, @next_page)
    session[:workouts] = @workouts
    redirect_to workout_path(@body_id)
  end

  private

  def retrieve_videos(body_id, next_page)
    videos = api_call(body_id, next_page)
    @workouts = pull_video_info(body_id, videos)
  end
end
