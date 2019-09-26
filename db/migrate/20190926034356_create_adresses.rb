class CreateAdresses < ActiveRecord::Migration[5.2]
  def change
    create_table :adresses do |t|
      t.string :zipcode, null:false
      t.string :prefectures, null:false
      t.string :city, null:false
      t.string :adress, null:false
      t.string :building, null:false
      t.integer :phone_number, null:false
      t.timestamps
    end
  end
end
