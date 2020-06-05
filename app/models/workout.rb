# frozen_string_literal: true

class Workout < ApplicationRecord
  validates :bodyId, :videoId, :title, :description, :channel, presence: true
end