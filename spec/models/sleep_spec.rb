require 'spec_helper'

describe Sleep do
	before :each do 
		@sleep = Sleep.new(hours_slept: 5, date: Time.now - 1.day)
	end

	describe "Sleep#hours_slept" do 
		it "should return the correct number of hours slept" do
			@sleep.hours_slept.should eq(5)
		end
	end
end
