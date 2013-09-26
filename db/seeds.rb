User.delete_all
Smoke.delete_all
Sleep.delete_all

joe = User.create(name: "Joe", :email => "joej21@gmail.com", :password => "password", :password_confirmation => "password")

smoke_thursday = Smoke.create(quantity: 3, date: Time.now.strftime("%m-%d-%Y"))
sleep_thursday = Sleep.create(hours_slept: 6.5, date: Time.now.strftime("%m-%d-%Y") - 1.day)

smoke_wednesday = Smoke.create(quantity: 15, date: Time.now.strftime("%m-%d-%Y") - 1.day)
sleep_wednesday = Sleep.create(hours_slept: 2, date: Time.now.strftime("%m-%d-%Y") - 2.day)

smoke_tuesday = Smoke.create(quantity: 13, date: Time.now.strftime("%m-%d-%Y") - 2.day)
sleep_tuesday = Sleep.create(hours_slept: 3, date: Time.now.strftime("%m-%d-%Y") - 3.day)

smoke_monday = Smoke.create(quantity: 10, date: Time.now.strftime("%m-%d-%Y") - 3.day)
sleep_monday = Sleep.create(hours_slept: 3.5, date: Time.now.strftime("%m-%d-%Y") - 4.day)

joe.smokes << Smoke.all
joe.sleeps << Sleep.all

# Time.now.strftime("%m-%d-%Y")