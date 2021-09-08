class CreateWhishlists < ActiveRecord::Migration[6.1]
  def change
    create_table :whishlists do |t|
      t.integer :user_id
      t.integer :jacket_id

      t.timestamps
    end
    add_foreign_key :whishlists, :users
    add_foreign_key :whishlists, :jackets 
  end
end
