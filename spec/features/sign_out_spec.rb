# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Sign out', type: :feature do
  scenario 'You cannot see Log out button when you are not logged in' do
    expect(page).not_to have_link('Sign out')
  end

  scenario 'You can sign out' do
    sign_up
    click_link 'Sign out'
    expect(page).not_to have_content('Welcome John Doe')
  end
end
