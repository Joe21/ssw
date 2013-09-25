User.delete_all
Smoke.delete_all
Sleep.delete_all

joe = User.create(name: "Joe", :email => "test1@asdf.org", :password => "password", :password_confirmation => "password")
halfpack = Smoke.create(quantity: 10, date: Time.now)
dying = Sleep.create(hours_slept: 3, date: Time.now - 1.day)


# user1 = User.create(:email => "test1@asdf.org", :password => "passpass", :password_confirmation => "passpass")