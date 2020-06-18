# frozen_string_literal: true

class CompletedWorkout < ApplicationRecord
  belongs_to :workout
  belongs_to :user

  scope :week, -> (user_id){ select('current_user').group(:user_id).where('created_at > ?', 1.week.ago).where(user_id: user_id) }
  scope :month, -> (user_id){ select('current_user').group(:user_id).where('created_at > ?', 1.month.ago).where(user_id: user_id) }
  scope :all_time, -> (user_id){ select('current_user').where(user_id: user_id) }
  
end
