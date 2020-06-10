module CompletedWorkoutHelper

  def all_time
    @all_time = CompletedWorkout.where(user_id: current_user.id).count
  end

end
