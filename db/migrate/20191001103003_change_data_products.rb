class ChangeDataProducts < ActiveRecord::Migration[5.2]
  def change
    change_column :products, :status, :integer
    change_column :products, :delivery_days, :integer
    change_column :products, :burden, :integer
    change_column :products, :way, :integer
    change_column :products, :size, :integer
  end
end
