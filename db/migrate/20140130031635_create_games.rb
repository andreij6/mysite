class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :p_one
      t.string :p_two

      t.timestamps
    end
  end
end
