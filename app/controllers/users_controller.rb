class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	@user = User.create(user_params)
  	if @user.save
  		redirect_to products_path, notice: "Welcome to Rainforest!!"
  	else
  		render :new
  	end
  end

  private
  def user_params
 	params.require(:user).permit(:email, :password, :password_confirmtion)
  end
end
