class CreateSleeps < ActiveRecord::Migration
  def change
    create_table :sleeps do |t|
      t.integer :hours_slept
      t.datetime :date
      t.timestamps
    end
  end
end
