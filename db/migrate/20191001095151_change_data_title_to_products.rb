class ChangeDataTitleToProducts < ActiveRecord::Migration[5.2]
  def change
    change_column :products, :status, :string
    change_column :products, :delivery_days, :string
    change_column :products, :burden, :string
    change_column :products, :way, :string
    change_column :products, :size, :string

  end
end
