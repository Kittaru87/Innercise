module CompletedWorkoutHelper

  def all_time
    @all_time = CompletedWorkout.where(user_id: current_user.id).count
  end

  def one_week
    @one_week = CompletedWorkout.where(user_id: current_user.id).where('created_at >= ?', 1.week.ago).count
  end

  def one_month
    @one_month = CompletedWorkout.where(user_id: current_user.id).where('created_at >= ?', 1.month.ago).count
  end

end
