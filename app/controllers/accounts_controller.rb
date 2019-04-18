class AccountsController < ApplicationController
  def show
    @email = current_user.email
    @user = User.where(:email => @email)
    @accounts = User.find(@user.ids)
  end
end
