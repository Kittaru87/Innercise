# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  subject { described_class.new }

  it 'is valid with valid attributes' do
    subject.username = 'test'
    subject.email = 'test@hotmail.com'
    subject.password = '123456'
    expect(subject).to be_valid
  end

  it 'is not valid without a email, password and username' do
    expect(subject).to_not be_valid
  end

  it 'is not valid without valid email' do
    subject.email = 'test'
    subject.password = '123456'
    expect(subject).to_not be_valid
  end

  it 'is not valid without valid password (no fewer than 6 characters)' do
    subject.email = 'test@hotmail.com'
    subject.password = '123'
    expect(subject).to_not be_valid
  end

  it 'is not valid without valid password (no more than 10 characters)' do
    subject.email = 'test@hotmail.com'
    subject.password = '12345678910'
    expect(subject).to_not be_valid
  end

end
