class CreditsController < ApplicationController
  def new
    @credit = Credit.new
  end
  
  def create
    @credit = Credit.new(credit_params)
    if @credit.save
      redirect_to registrations_finish_path
    end
  end


  def credit_params
    params.require(:credit).permit(:number, :expiration_date, :security_code).merge(user_id:current_user.id)
  end

end
