# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'like workouts', type: :feature do

  # let(:workout) { double :workout, id: 1 }

  # before(:each) do
  #   sign_up
  #   click_link 'ARMS'
  # end

  # it "won't throw an error when a video is liked" do
  #   # sleep 10
  #   # click_button 'Like'
  #   # expect { page }.to_not raise_error
  # end

  # it "will register a like" do

  #   click_button 'Like'
  #   expect(page.body).to have_content('1 Likes')
  # end

  # it "will not allow you like the same video twice" do

  #   click_button 'Like'
  #   click_button 'Like'

  #   expect(page).to have_content("You can't like a workout more than once")
  # end

  # scenario 'Can like a video' do
  #   first(:css, '.btn-video').click

  #   expect(page.body).to have_content('1 Likes')
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
