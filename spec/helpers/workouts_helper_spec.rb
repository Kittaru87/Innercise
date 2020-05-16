# frozen_string_literal: true

require 'rails_helper'


describe WorkoutsHelper do

  describe "api call method" do
    it "should not raise an error when making an api call" do
      workout = "arms"
      expect {helper.api_call(workout)}.to_not raise_error, response.body
      # ActiveSupport::JSON.decode(helper.api_call(workout)).should_not be_nil
      # expect(helper.api_call(workout)).to eq(JSON)
    end
  end
end
