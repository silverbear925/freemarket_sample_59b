class CreateCatedogories < ActiveRecord::Migration[5.2]
  def change
    create_table :catedogories do |t|

      t.timestamps
      t.string :name,null:false
    end
  end
end
