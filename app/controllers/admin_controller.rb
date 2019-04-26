class AdminController < ApplicationController
  def index
  	@admins = User.find_by_user_type("User")
  	# byebug
  end
end
