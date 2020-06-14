# frozen_string_literal: true

class Like < ApplicationRecord
  belongs_to :workout
  belongs_to :user

  scope :popular, -> { select('workout_id, count(workout_id) as count').group(:workout_id).order('count desc').limit(5) }

  scope :body_popular, -> { Like.select(:workout_id, :'workouts.bodyId', :'workouts.videoId', :'workouts.title').joins('workouts').where('likes.workout_id = workouts.id') }
    
  # Like.joins('workouts').select('likes.workout_id', 'workouts.bodyId', 'workouts.videoId', 'workouts.title').where('likes.workout_id = workouts.id') }

  
end
