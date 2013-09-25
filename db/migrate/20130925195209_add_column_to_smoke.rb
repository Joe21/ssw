class AddColumnToSmoke < ActiveRecord::Migration
  def change
  	add_column :smokes, :user_id, :integer
  end
end
