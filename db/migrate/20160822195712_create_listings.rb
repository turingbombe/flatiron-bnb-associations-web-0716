class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :address
      t.string :listing_type
      t.string :title
      t.string :description
      t.float :price
      t.integer :host_id
      t.timestamps null: false
    end
    add_foreign_key :listings, :neighborhood
    add_foreign_key :listings, :user
  end
end
