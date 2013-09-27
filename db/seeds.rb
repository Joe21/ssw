User.delete_all
Smoke.delete_all
Sleep.delete_all

joe = User.create(name: "Joe", :email => "joej21@gmail.com", :password => "password", :password_confirmation => "password")

smoke_wednesday = Smoke.create(quantity: 15, date: Time.now - 3.day, temperature: 70)
sleep_wednesday = Sleep.create(hours_slept: 2, date: Time.now - 4.day)
joe.smokes << smoke_wednesday
joe.sleeps << sleep_wednesday

smoke_tuesday = Smoke.create(quantity: 13, date: Time.now - 2.day, temperature: 72)
sleep_tuesday = Sleep.create(hours_slept: 3, date: Time.now - 3.day)
joe.smokes << smoke_tuesday
joe.sleeps << sleep_tuesday

smoke_monday = Smoke.create(quantity: 10, date: Time.now - 1.day, temperature: 68)
sleep_monday = Sleep.create(hours_slept: 3.5, date: Time.now - 2.day)
joe.smokes << smoke_monday
joe.sleeps << sleep_monday