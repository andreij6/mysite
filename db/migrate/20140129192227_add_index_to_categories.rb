class AddIndexToCategories < ActiveRecord::Migration
  def up
    add_index :categories, :blog_id
  end
  
  def down
    remove_index :categories, :blog_id
  end
end
