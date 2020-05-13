# frozen_string_literal: true

require 'rails_helper'

RSpec.describe WorkoutsController, type: :controller do
  describe 'GET #index' do
    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end
  end
end
