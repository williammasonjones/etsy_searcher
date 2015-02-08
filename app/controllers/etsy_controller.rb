class EtsyController < ApplicationController
	#ETSY_API_TOKEN = ENV['ETSY_API_TOKEN']
	# ETSY_API_TOKEN = lfdnd7eyx7gsr5sphbowaren
	# SECRET = o24rht1fv9

	def search
		render :search
	end
end
