# frozen_string_literal: true

module CompletedWorkoutHelper
  def all_time
    @all_time = CompletedWorkout.all_time(current_user.id).count
  end

  def one_week
    @one_week = CompletedWorkout.week(current_user.id).count.values[0]
  end

  def one_month
    @one_month = CompletedWorkout.month(current_user.id).count.values[0]
  end
end
