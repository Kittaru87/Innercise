# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Sign in', type: :feature do
  scenario 'You can sign in' do
    sign_up
    click_link 'Sign out'
    sign_in
    expect(page).to have_content('Signed in successfully.')
  end

  scenario "You can't sign in with the wrong email address" do
    sign_up
    click_link 'Sign out'
    visit '/users/sign_in'
    fill_in 'user_email', with: 'testcom'
    fill_in 'user_password', with: 'testtest'
    click_button 'Log in'
    expect(page).to have_content('Invalid Email or password.')
  end

  scenario "You can't sign in with the wrong password" do
    sign_up
    click_link 'Sign out'
    visit '/users/sign_in'
    fill_in 'user_email', with: 'test@test.com'
    fill_in 'user_password', with: 'wrong123'
    click_button 'Log in'
    expect(page).to have_content('Invalid Email or password.')
  end
end
