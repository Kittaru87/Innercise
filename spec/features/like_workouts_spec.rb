# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'like workouts', type: :feature do
  before(:each) do
    sign_up
    click_link 'ARMS'
  end

  # scenario 'Can like a video' do
  #   first(:css, '.btn-video').click

  #   expect(page).to have_content('1 Likes')
  # end

  # scenario 'Cannot like the same video twice' do
  #   first(:css, '.btn-video').click
  #   first(:css, '.btn-video').click

  #   expect(page).to have_content("You can't like a workout more than once")
  # end

  # scenario 'Can unlike a previously liked post' do
  #   first(:css, '.like_post_test').click
  #   first(:css, '.like_post_test').click

  #   expect(page).to have_content('0 Likes')
  # end
end
