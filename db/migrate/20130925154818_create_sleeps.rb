class CreateSleeps < ActiveRecord::Migration
  def change
    create_table :sleeps do |t|
      t.integer :hours_slept
      t.datetime :date, :default => Time.now.to_formatted_s(:long) - 1.day
      t.timestamps
    end
  end
end
