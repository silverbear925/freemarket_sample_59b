class RemoveUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users , :phone_number,:integer
    remove_column :users , :zipcode,:integer
    remove_column :users , :prefectures, :string
    remove_column :users , :adress, :string
    remove_column :users , :building, :string
    remove_column :users , :evaluation, :string
  end
end
