class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name, null:false
      t.references :category, null:false,foregign_key:true
      t.text :text, null:false
      t.integer :status, null:false
      t.string :delivery_price, null:false
      t.references :area ,null:false,foreigner_key:true
      t.integer :delivery_days,null:false
      t.references :user, null:false,foreigner_key:true
      t.references :brand,foreigner_key:true
      t.integer :buy_user
      t.string :sale
      t.timestamps
    end
  end
end
