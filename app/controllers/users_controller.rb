class UsersController < ApplicationController
  def new
   # @user = User.new
  end

  def create
     render plain: params[:user].inspect
#    @user = User.new(user_params)

 #   if @user.save
  #    redirect_to @user
   # else
    #  render 'new'
  #  end
  end

end
