# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Pull up list of videos', type: :feature do
  before(:each) do
    visit '/'
    click_link 'ARMS'
  end

  it 'can go back to the home page' do
    find("a[href='/']").click
    expect(current_path).to eq('/')
  end
end
