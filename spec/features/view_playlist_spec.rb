# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Pull up list of videos', type: :feature do
  before(:each) do
    visit '/'
  end

  it 'can navigate to the correct workout page' do
    click_link 'ARMS'
    expect(page).to have_content('arms workouts')
    expect{page}.to_not raise_error
  end

  it 'can navigate to the correct workout page' do
    click_link 'SHOULDERS'
    expect(page).to have_content('shoulders workouts')
    expect{page}.to_not raise_error
  end

  it 'can navigate to the correct workout page' do
    click_link 'BACK'
    expect(page).to have_content('back workouts')
    expect{page}.to_not raise_error
  end

  it 'can navigate to the correct workout page' do
    click_link 'CHEST'
    expect(page).to have_content('chest workouts')
    expect{page}.to_not raise_error
  end

  it 'can navigate to the correct workout page' do
    click_link 'GLUTES'
    expect(page).to have_content('glutes workouts')
    expect{page}.to_not raise_error
  end

  it 'can navigate to the correct workout page' do
    click_link 'LEGS'
    expect(page).to have_content('legs workouts')
    expect{page}.to_not raise_error
  end

  it 'can navigate to the correct workout page' do
    click_link 'CORE'
    expect(page).to have_content('core workouts')
    expect{page}.to_not raise_error
  end

  it 'can navigate to the correct workout page' do
    click_link 'YOGA'
    expect(page).to have_content('yoga workouts')
    expect{page}.to_not raise_error
  end
end
