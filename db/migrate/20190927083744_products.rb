class Products < ActiveRecord::Migration[5.2]
  def change
    remove_column :products , :delivery_price, :string
    add_column  :products, :burden, :string,null:false
    add_column  :products, :way, :string ,null:false
    add_column  :products, :size, :string
    add_column  :products, :price, :integer,null:false
    
    
  end
end
