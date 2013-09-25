require 'spec_helper'

describe Smoke do
	before :each do 
		@smoke = Smoke.new(quantity: 10, date: Time.now)
	end

	describe "Smoke#quantity" do 
		it "should return the correct quantity" do
			@smoke.quantity.should eq(10)
		end
	end
end