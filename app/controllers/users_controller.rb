class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    
  end
  
  def edit
    @user = User.find(params[:id])
  end

  def log_out
  end

  def user_edit
  end

end
