class AddPostIdToAction < ActiveRecord::Migration
  def change
    add_column :actions, :post_id, :integer
  end
end
