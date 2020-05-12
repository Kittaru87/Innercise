# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Pull up list of videos', type: :feature do

  before(:each) do
    visit '/'
  end

  it 'can show a list of videos for arm exercises' do
    click_button 'Arms'
    expect(page).to have_content('Arm workouts')
  end

end
