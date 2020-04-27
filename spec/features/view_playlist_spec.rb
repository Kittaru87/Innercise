# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Submit posts', type: :feature do
  scenario 'Can click on a button and view a playlist' do
    visit '/home'
    click_button 'Arms'
    expect(page).to have_content('First message')
  end

end
