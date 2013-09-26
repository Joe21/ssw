class DashboardController < ApplicationController

	include HTTParty 


# root        		/                       dashboard#index
	def index
		@users = User.all

		# obtain woeid for Flatiron District (12761342)
		url = "http://where.yahooapis.com/v1/places.q('10010')?appid=dj0yJmk9MlViRFMzYTViYUcwJmQ9WVdrOVZtZGhUVlpWTm04bWNHbzlNQS0tJnM9Y29uc3VtZXJzZWNyZXQmeD1mYg--"
		response = HTTParty.get(url)
		data = response.parsed_response
		woeid = data['places']['place']['woeid']

		# obtain the temp via the woeid
		url = "http://weather.yahooapis.com/forecastrss?w=#{woeid}"
		response = HTTParty.get(url)
		data = response.parsed_response
		@temp = data['rss']["channel"]['item']['condition']['temp']

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