class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :title
      t.string :sub_title
      t.string :isbn
      t.decimal :price
      t.string :image
      t.string :url
      t.belongs_to :category

      t.timestamps
    end
  end
end
