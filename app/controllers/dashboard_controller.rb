class DashboardController < ApplicationController

	include HTTParty 

	before_filter :authenticate_user!, only: [:index, :new, :create, :like]

# root        		/                       	dashboard#index
	def index

		if user_signed_in?
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


			@likes = Like.first

		else
			redirect_to '/'
		end

	end

# entry GET    		/entry(.:format)			dashboard#new
	def new
	end

# log_entry POST	/log_entry(.:format)		dashboard#create
	def create

		url = "http://where.yahooapis.com/v1/places.q('10010')?appid=dj0yJmk9MlViRFMzYTViYUcwJmQ9WVdrOVZtZGhUVlpWTm04bWNHbzlNQS0tJnM9Y29uc3VtZXJzZWNyZXQmeD1mYg--"
		response = HTTParty.get(url)
		data = response.parsed_response
		woeid = data['places']['place']['woeid']

		# obtain the temp via the woeid
		url = "http://weather.yahooapis.com/forecastrss?w=#{woeid}"
		response = HTTParty.get(url)
		data = response.parsed_response
		@temp = data['rss']["channel"]['item']['condition']['temp']

		smoke = Smoke.new(params[:smoke])
		smoke.date = Time.now
		smoke.temperature = @temp
		smoke.save

		sleep = Sleep.new(params[:sleep])
		sleep.date = Time.now - 1.day
		sleep.save

		current_user.smokes << smoke
		current_user.sleeps << sleep

		redirect_to '/'
	end

# log_delete POST   /log_delete/:counter(.:format)		dashboard#destroy
	def destroy
    
    	current_user.smokes[params[:counter].to_i].destroy
    	current_user.sleeps[params[:counter].to_i].destroy
	    redirect_to '/'
  	end

# super_awesome_time POST   /index(.:format)           	dashboard#like
  	def like
  		@likes = Like.first
  		@likes.increment(:counter)
  		@likes.save
  		redirect_to '/'
  	end

end