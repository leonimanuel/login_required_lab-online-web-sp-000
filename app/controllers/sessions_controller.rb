class SessionsController < ApplicationController
	def new
		render "login"
	end

	def create
		if !params[:name] || params[:name].empty?
			redirect_to action: "new"
		else
			if session[:name]
				redirect_to "/"
			else
				session[:name] = params[:name]
				redirect_to "/"
			end
		end
	end

	def destroy
		if session[:name]
			session.delete :name
			redirect_to "/login"
		end
	end

	def index
		
	end
end