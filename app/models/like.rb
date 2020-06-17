# frozen_string_literal: true

class Like < ApplicationRecord
  belongs_to :workout
  belongs_to :user

  scope :popular, -> { select('workout_id, count(workout_id) as count').group(:workout_id).order('count desc').limit(5) }
  scope :workout_likes, -> (workout_id){ select('workout_id').group(:workout_id).where(workout_id: workout_id) }
end
