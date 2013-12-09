class SessionsController < ApplicationController
  def new
  end

  def create
    session[:user_id] = User.login(params[:email], params[:password])
    redirect_to '/'
  end
end
