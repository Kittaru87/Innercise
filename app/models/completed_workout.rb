class CompletedWorkout < ApplicationRecord
  belongs_to :workout
  belongs_to :user

  scope :week, -> { select('current_user, count(user_id) as count').where("created_at > ?", 1.week.ago).group(:user_id) }

  # SELECT user_id, count(user_id) as count FROM "completed_workouts" WHERE created_at > current_date - interval '7 days' AND user_id = 5 GROUP BY user_id
end
  