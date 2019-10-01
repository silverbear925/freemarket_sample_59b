class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end
  
  def edit
  end

  def log_out
  end


end
