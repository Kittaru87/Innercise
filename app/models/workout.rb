# frozen_string_literal: true

class Workout < ApplicationRecord
  validates :bodyId, :videoId, :title, :description, :channel, presence: true
  has_many :likes, dependent: :destroy
  has_many :completed_workouts, dependent: :destroy

  scope :popular, -> { select('likes.workout_id', 'bodyId', 'videoId', 'title').joins(:likes).distinct }
end
