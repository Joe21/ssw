class DashboardController < ApplicationController

# root        		/                       dashboard#index
	def index
		@users = User.all

# https://developer.apps.yahoo.com/projects
# register your app
# http://where.yahooapis.com/v1/places.q('92648')?appid=dj0yJmk9SmFycmxEWUpuYTViJmQ9WVdrOWJFMXZTMm95Tl...
# build that URL ^^^
# put your own key after appid=
# and replace 92648 with whatever zip code is entered
# that gives you the woeid, used to look up the yahoo weather
# http://weather.yahooapis.com/forecastrss?w=12796572
# then add the woeid after w= to retrieve the weather for that location
# look for temp="
		
	end

# entry GET    		/entry(.:format)		dashboard#new
	def new
	end

# log_entry POST	/log_entry(.:format)	dashboard#create
	def create
		@user = User.find(current_user.id)

		@smoke = Smoke.create(params[:smoke])
		@sleep = Sleep.create(params[:sleep])

		@user.smokes << @smoke
		@user.sleep << @sleep

		redirect_to '/'
	end



end