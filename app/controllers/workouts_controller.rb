# frozen_string_literal: true

class WorkoutsController < ApplicationController
  def index; end

  def new
    @workout = Workout.new
  end

  def show; end
end
