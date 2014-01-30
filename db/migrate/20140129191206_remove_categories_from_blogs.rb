class RemoveCategoriesFromBlogs < ActiveRecord::Migration
  def up
    remove_column :blogs, :category 
  end
  
  def down
    add_column :blogs, :category, :string
  end
end
