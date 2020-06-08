# frozen_string_literal: true

class HomeController < ApplicationController
  before_action :set_account, only: [:profile]

  def index; end

  def terms_of_service; end

  def about; end

  def set_account
    @account = User.find_by(username: params[:username])
  end
end
