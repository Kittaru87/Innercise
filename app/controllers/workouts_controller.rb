# frozen_string_literal: true

class WorkoutsController < ApplicationController
  include WorkoutsHelper

  def show
    @next_page = params[:nextPageToken]
    puts @next_page
    @workout_id = params[:id]
    videos = api_call(@workout_id, @next_page)
    @workouts = pull_video_info(videos)
  end
end
