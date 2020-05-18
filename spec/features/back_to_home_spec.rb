
require 'rails_helper'

RSpec.feature 'Pull up list of videos', type: :feature do
  before(:each) do
    visit '/'
    click_link 'Arms'
  end

  it 'can go back to the home page' do
    click_link 'Back'
    expect(current_path).to eq('/')
  end

end