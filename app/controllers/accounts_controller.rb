class AccountsController < ApplicationController
  def show
     @accounts = User.find(params[:id])

  end
end
