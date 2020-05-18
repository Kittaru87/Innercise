# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Pull up list of videos', type: :feature do
  before(:each) do
    visit '/'
  end

  it 'can navigate to the correct workout page' do
    click_link 'Arms'
    expect(page).to have_content('arms workouts')
    expect{page}.to_not raise_error
  end

  it 'can navigate to the correct workout page' do
    click_link 'Shoulders'
    expect(page).to have_content('shoulders workouts')
    expect{page}.to_not raise_error
  end

  it 'can navigate to the correct workout page' do
    click_link 'Back'
    expect(page).to have_content('back workouts')
    expect{page}.to_not raise_error
  end

  it 'can navigate to the correct workout page' do
    click_link 'Chest'
    expect(page).to have_content('chest workouts')
    expect{page}.to_not raise_error
  end

  it 'can navigate to the correct workout page' do
    click_link 'Glutes'
    expect(page).to have_content('glutes workouts')
    expect{page}.to_not raise_error
  end

  it 'can navigate to the correct workout page' do
    click_link 'Legs'
    expect(page).to have_content('legs workouts')
    expect{page}.to_not raise_error
  end

  it 'can navigate to the correct workout page' do
    click_link 'Core'
    expect(page).to have_content('core workouts')
    expect{page}.to_not raise_error
  end
end
