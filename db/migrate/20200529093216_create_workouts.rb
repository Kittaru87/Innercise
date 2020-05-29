# frozen_string_literal: true

class CreateWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :workouts do |t|
      t.string 'bodyId'
      t.string 'videoId'
      t.string 'title'
      t.string 'description'
      t.string 'channel'

      t.timestamps
    end
  end
end
