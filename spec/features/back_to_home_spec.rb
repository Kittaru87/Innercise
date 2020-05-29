# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Navigate back to the home page', type: :feature do
  before(:each) do
    visit '/'
    click_link 'ARMS'
  end

  it 'can click the logo' do
    find("a[href='/']").click
    expect(current_path).to eq('/')
  end
end
