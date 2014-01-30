class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :body
      t.string :category
      t.boolean :visible

      t.timestamps
    end
  end
end
