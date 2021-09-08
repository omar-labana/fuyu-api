class CreateJackets < ActiveRecord::Migration[6.1]
  def change
    create_table :jackets do |t|
      t.string :name
      t.string :price
      t.string :image_url
      t.text :description
      
      t.timestamps
    end
  end
end
