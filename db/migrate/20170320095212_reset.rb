class Reset < ActiveRecord::Migration[5.0]
  def up
  
	drop_table :table_communes do |t|
	end	
	drop_table :table_intercommunalities do |t|
	end	
	drop_table :table_streets do |t|
	end	
	drop_table :communes_streets do |t|
	end	

	
	
  end
  
  def down
	
	end
end
