class New < ActiveRecord::Migration[5.0]
  def up
	create_table :communes
	create_table :streets
	create_table :intercommunalities
	create_join_table :communes, :streets
	
	
  end
end
