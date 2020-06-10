# frozen_string_literal: true

class AccountsController < ApplicationController
  include AccountsHelper

  def profile
    @all_workouts = Like.where(user_id: current_user.id)
  end



  private

  def sign_up_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :current_password)
  end
end
