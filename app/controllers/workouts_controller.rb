  # frozen_string_literal: true

class WorkoutsController < ApplicationController
  include WorkoutsHelper

  def show
    @workouts = session[:workouts]
    @workout_id = params[:id]
    puts 'start'
    puts @workouts
    if !@workouts.empty? 
      @previous_page = @workouts[0]["prevPageToken"]
      puts "previous page"
      puts @previous_page
      @workouts
    else
    retrieve_videos(@workout_id, "")
  end
  puts @workouts
  end

  def update
    @next_page = params[:nextPageToken]
    # puts @next_page 
    @previous_page = params[:prevPageToken]
    # puts @previous_page
    @workout_id = params[:id]
    # puts @workout_id
    retrieve_videos(@workout_id, @next_page)
    # puts @workouts
    session[:workouts] = @workouts
    redirect_to workout_path(@workout_id)
  end

  def destroy
    @workouts = session[:workouts]
    @workouts.destroy
    redirect_to :root 
  end

private 

  def retrieve_videos(workout_id, next_page)
    videos = api_call(workout_id, next_page)
    @workouts = pull_video_info(videos)
  end

end
