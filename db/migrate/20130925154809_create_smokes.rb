class CreateSmokes < ActiveRecord::Migration
  def change
    create_table :smokes do |t|
      t.integer :quantity
      t.datetime :date
      t.timestamps
    end
  end
end
