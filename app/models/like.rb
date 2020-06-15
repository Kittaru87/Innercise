# frozen_string_literal: true

class Like < ApplicationRecord
  belongs_to :workout
  belongs_to :user

  scope :popular, -> { select('workout_id, count(workout_id) as count').group(:workout_id).order('count desc').limit(5) }

  scope :body_popular, lambda {
                         Workout.joins(:likes)
                                .select('likes.workout_id', 'bodyId', 'videoId', 'title')
                                .distinct
                       }
end
