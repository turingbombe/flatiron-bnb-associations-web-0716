class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.boolean :is_guest
      t.boolean :is_host
      t.string :name

      t.timestamps null: false
    end
  end
end
