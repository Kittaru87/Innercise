# frozen_string_literal: true

class Like < ApplicationRecord
  belongs_to :workout
  belongs_to :user

  scope :popular, -> { select('workout_id, count(workout_id) as count').group(:workout_id).order('count desc').limit(5) }

  # "SELECT workout_id, count(workout_id) as count FROM "likes" GROUP BY workout_id ORDER BY count desc LIMIT 3"
end
