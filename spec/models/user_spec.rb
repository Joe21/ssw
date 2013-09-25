require 'spec_helper'

describe User do
	before :each do 
		@user = User.new(name: "Joe", :email => "test1@asdf.org", :password => "password", :password_confirmation => "password")
	end

	describe "User#name" do 
		it "should return the correct name of the user" do
			@user.name.should eq("Joe")
		end
	end
end