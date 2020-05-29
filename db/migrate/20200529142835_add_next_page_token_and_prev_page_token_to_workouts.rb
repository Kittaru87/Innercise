# frozen_string_literal: true

class AddNextPageTokenAndPrevPageTokenToWorkouts < ActiveRecord::Migration[6.0]
  def change
    add_column :workouts, :nextPageToken, :string
    add_column :workouts, :prevPageToken, :string
  end
end
