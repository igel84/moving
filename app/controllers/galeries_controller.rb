class GaleriesController < ApplicationController
	def show
		@galery = Galery.find(params[:id])
		#render :text => 'index'
	end
end