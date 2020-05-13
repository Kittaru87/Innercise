# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Pull up list of videos', type: :feature do

  before(:each) do
    visit '/'
  end

  it 'can navigate to the correct workout page' do
    click_button 'Arms'
    expect(page).to have_content('Arm workouts')
  end


end
