# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Pull up list of videos', type: :feature do
  before(:each) do
    visit '/'
  end

  it 'can navigate to the arms workout page' do
    click_link 'ARMS'
    expect(page).to have_content('Arms workouts')
    # expect { page }.to_not raise_error
  end

  it 'can navigate to the shoulders workout page' do
    click_link 'SHOULDERS'
    expect(page).to have_content('Shoulders workouts')
    expect { page }.to_not raise_error
  end

  it 'can navigate to the back workout page' do
    click_link 'BACK'
    expect(page).to have_content('Back workouts')
    expect { page }.to_not raise_error
  end

  it 'can navigate to the chest workout page' do
    click_link 'CHEST'
    expect(page).to have_content('Chest workouts')
    expect { page }.to_not raise_error
  end

  it 'can navigate to the glutes workout page' do
    click_link 'GLUTES'
    expect(page).to have_content('Glutes workouts')
    expect { page }.to_not raise_error
  end

  it 'can navigate to the legs workout page' do
    click_link 'LEGS'
    expect(page).to have_content('Legs workouts')
    expect { page }.to_not raise_error
  end

  it 'can navigate to the core workout page' do
    click_link 'CORE'
    expect(page).to have_content('Core workouts')
    expect { page }.to_not raise_error
  end

  it 'can navigate to the yoga workout page' do
    click_link 'YOGA'
    expect(page).to have_content('Yoga workouts')
    expect { page }.to_not raise_error
  end
end
