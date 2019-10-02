class AdressesController < ApplicationController

  def new
    @adress = Adress.new
  end

  def create
    @adress = Adress.new(adress_params)
    if @adress.save
      redirect_to new_credit_path
    end
  end

  def show
  end
    
  def adress_params
    params.require(:adress).permit(:zipcode, :prefectures, :city, :adress, :building, :phone_number).merge(user_id:current_user.id)
  end

end
