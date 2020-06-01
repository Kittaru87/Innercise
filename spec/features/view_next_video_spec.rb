# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'pulls up next video', type: :feature do
  before(:each) do
    visit '/'
    click_link 'ARMS'
  end

  it 'can go to the next video ' do
    click_button 'Next'
    expect { page }.to_not raise_error
  end

  it 'can go to the previous video ' do
    click_button 'Next'
    click_button 'Previous'
    expect { page }.to_not raise_error
  end


end