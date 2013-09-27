class AddTempColumnToSmoke < ActiveRecord::Migration
  def change
  	add_column :smokes, :temperature, :integer
  end
end
