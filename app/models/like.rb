# frozen_string_literal: true

class Like < ApplicationRecord
  belongs_to :workout
  belongs_to :user
end
