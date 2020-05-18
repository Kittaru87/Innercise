# frozen_string_literal: true

class WorkoutsController < ApplicationController
  include WorkoutsHelper

  def show
    @workout_id = params[:id]
    videos = api_call(@workout_id)
    @workouts = pull_video_info(videos)
    puts @workouts
  end
end
