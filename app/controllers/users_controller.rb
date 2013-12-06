class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      flash[:notice] = "Sign up successful"
      redirect_to '/'
    else
      render 'new'
    end
  end

  private

  def user_params
    params[:user].permit( :first_name, :last_name, :gender, :email, :dob, :password, :school_name )
  end
end
