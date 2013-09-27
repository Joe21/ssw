class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.integer :counter
      t.timestamps
    end
  end
end
