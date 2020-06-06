class LikesController < ApplicationController
  before_action :find_workout
  
  def create
    # if already_liked?
    #   flash[:notice] = "You can't like more than once"
    # else
      @workout = Like.create(user_id: current_user.id, workout_id: params[:workout_id])
    # end
    # redirect_to workout_path(@workout['bodyId'])
    # redirect_to workout_path(@post)
  end

  private

  def find_workout
    Workout.find(params[:workout_id])
  end

  # def already_liked?
  #   Like.where(user_id: current_user.id, workout_id: params[:workout_id]).exists?
  # end

end
