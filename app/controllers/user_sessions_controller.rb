class UserSessionsController < ApplicationController
  	def new
   		@user = User.new
	end
end
	