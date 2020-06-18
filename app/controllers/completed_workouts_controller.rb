# frozen_string_literal: true

class CompletedWorkoutsController < ApplicationController
  before_action :find_workout

  def create
    @completed_workout = CompletedWorkout.create(user_id: current_user.id, workout_id: params[:workout_id])
  end

  private

  def find_workout
    @found_workout = Workout.find(params[:workout_id])
  end
end
