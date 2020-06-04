# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Sign up', type: :feature do
  scenario 'User asked to sign up with username, email and password' do
    visit '/users/sign_up'
    expect(page).to have_field('Username')
    expect(page).to have_field('user_email')
    expect(page).to have_field('user_password')
    expect(page).to have_field('user_password_confirmation')
  end

  scenario 'User can only use a valid email' do
    visit '/users/sign_up'
    fill_in 'Username', with: 'John Doe'
    fill_in 'user_email', with: 'wrongemails'
    fill_in 'user_password', with: 'testtest'
    fill_in 'user_password_confirmation', with: 'testtest'
    click_button 'Sign up'
    expect(page).to have_content('Email is invalid')
  end

  scenario 'User cannot sign up with an invalid password (less than 6 characters)' do
    visit '/users/sign_up'
    fill_in 'Username', with: 'John Doe'
    fill_in 'user_email', with: 'test2@test.com'
    fill_in 'user_password', with: 'test'
    fill_in 'user_password_confirmation', with: 'test'
    click_button 'Sign up'
    expect(page).to have_content('Password is too short (minimum is 6 characters)')
  end

  scenario 'User cannot sign up with an invalid password (more than 10 characters)' do
    visit '/users/sign_up'
    fill_in 'Username', with: 'John Doe'
    fill_in 'user_email', with: 'wrongemails'
    fill_in 'user_password', with: 'testtesttest'
    fill_in 'user_password_confirmation', with: 'testtesttest'
    click_button 'Sign up'
    expect(page).to have_content('Password is too long (maximum is 10 characters)')
  end

  scenario 'User can sign up' do
    sign_up
    expect(page).to have_content('Welcome! You have signed up successfully.')
  end
end
