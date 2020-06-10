# frozen_string_literal: true

class Workout < ApplicationRecord
  validates :bodyId, :videoId, :title, :description, :channel, presence: true
  has_many :likes, dependent: :destroy
  has_many :completed_workouts, dependent: :destroy
end
