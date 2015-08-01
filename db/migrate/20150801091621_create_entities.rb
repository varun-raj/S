class CreateEntities < ActiveRecord::Migration
  def change
    create_table :entities do |t|
      t.string :name
      t.text :description
      t.integer :entity_type_id
      t.string :avatar
      t.string :cover_image

      t.timestamps null: false
    end
  end
end
