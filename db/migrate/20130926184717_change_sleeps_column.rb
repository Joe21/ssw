class ChangeSleepsColumn < ActiveRecord::Migration
  def up
	change_column :sleeps, :hours_slept, :decimal, :precision => 8, :scale => 2
  end

  def down
	change_column :sleeps, :hours_slept, :integer
  end
end
