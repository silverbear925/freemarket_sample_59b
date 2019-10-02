class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end
  
  def edit
    @user = User.find(params[:id])
  end

  def log_out
  end

  def credit_delete
  end

  def credit_add
  end

  def credit_create
  end

end
