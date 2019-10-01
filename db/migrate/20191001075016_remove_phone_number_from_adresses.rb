class RemovePhoneNumberFromAdresses < ActiveRecord::Migration[5.2]
  def change
    remove_column :adresses, :phone_number, :integer

  end
end
