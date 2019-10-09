class ChangeDataAdresses < ActiveRecord::Migration[5.2]
  def change
    change_column :adresses, :phone_number, :string
  end
end
