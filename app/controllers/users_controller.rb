class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])  
  end
  
  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to edit_user_path
  end

  def log_out
  end

  def user_edit
  end


  private

  def user_params
    params.require(:user).permit(:nickname, :text)
  end

end 
