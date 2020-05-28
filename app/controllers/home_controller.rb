# frozen_string_literal: true

class HomeController < ApplicationController
  def index; end

  def destroy
    @workouts = session[:workouts]
    @workouts = []
    puts @workouts
    redirect_to :root 
  end
end
