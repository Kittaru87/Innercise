# frozen_string_literal: true

class WorkoutsController < ApplicationController
  include WorkoutsHelper

  # def index 
  #   @workouts
  # end

  def show
    @workout_id = params[:id]
    videos = api_call(@workout_id)
    @workouts = pull_video_info(videos)
    # redirect_to workouts_path(id: @workout_id)
  end
end
