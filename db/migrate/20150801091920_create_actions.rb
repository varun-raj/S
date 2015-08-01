class CreateActions < ActiveRecord::Migration
  def change
    create_table :actions do |t|
      t.integer :activity_id
      t.integer :entity_id

      t.timestamps null: false
    end
  end
end
