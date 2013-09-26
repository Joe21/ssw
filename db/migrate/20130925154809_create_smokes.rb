class CreateSmokes < ActiveRecord::Migration
  def change
    create_table :smokes do |t|
      t.integer :quantity
      t.datetime :date, :default => Time.now.to_formatted_s(:long)
      t.timestamps
    end
  end
end
