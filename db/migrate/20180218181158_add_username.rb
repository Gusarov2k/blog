class AddUsername < ActiveRecord::Migration[5.1]
  def change
  	#add new column to old tables
  	add_column :users, :username, :string ,:unique true
  end
end
