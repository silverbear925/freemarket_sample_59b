class CreateCredits < ActiveRecord::Migration[5.2]
  def change
    create_table :credits do |t|
      t.references :user,null:false , foregign_key:true
      t.integer :number
      t.date :expiration_date,null:false
      t.integer :security_code, null:false
      t.timestamps
    end
  end
end
