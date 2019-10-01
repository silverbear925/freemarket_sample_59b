class AddphoneNumberToadresses < ActiveRecord::Migration[5.2]
  def change
    add_column :adresses,:phone_number,:string
  end
end
