# frozen_string_literal: true

require 'rails_helper'

RSpec.describe AccountsController, type: :controller do
  before(:each) do
    @user = User.create { :user }
  end

  # it 'should have a current_user' do
  #   expect(subject.current_user).to_not eq(nil)
  # end

  describe 'GET #index' do
    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end
  end
end
