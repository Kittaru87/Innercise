# frozen_string_literal: true

class WorkoutsController < ApplicationController
  include WorkoutsHelper

  def index; end

  # def new
  #   @workout = Workout.new
  # end

  def show
    @workout_id = params[:id]
    videos = api_call(@workout_id)
    @workout = pull_video_info(videos)
    redirect_to workouts_path
  end
end
