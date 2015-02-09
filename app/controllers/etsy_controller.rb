class EtsyController < ApplicationController
	# ETSY_API_TOKEN = ENV['ETSY_API_TOKEN']
	# ETSY_API_TOKEN = lfdnd7eyx7gsr5sphbowaren
	# SECRET = o24rht1fv9

	def search
	  if params[:q]
	  	response = Etsy::Request.get('/listings/active', :includes => ['Images', 'Shop'], :keywords => params[:q])
	  	@results = JSON.parse(response.body)['results']
	  end
	  # binding.pry
		render :search
	end
end
