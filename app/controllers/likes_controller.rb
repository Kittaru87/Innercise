class LikesController < ApplicationController
  before_action :find_workout
  
  def create
    if already_liked?
      flash[:notice] = "You can't like more than once"
    else
      @workout.likes.create(user_id: current_user.id)
    end
    # redirect_to workout_path(@post)
    # redirect_to workout_path(@post)
  end

  private

  def find_workout
    @workout = Workout.find(params[:workout_id])
    puts @workout
  end

  def already_liked?
    Like.where(user_id: current_user.id, workout_id: params[:workout_id]).exists?
  end

end
