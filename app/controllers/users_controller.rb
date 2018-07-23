class UsersController < ApplicationController
	def index
  	run User::Index
  	render cell(User::Cell::Index, result["model"], layout: Gemgem::Cell::Layout)
	end
end
