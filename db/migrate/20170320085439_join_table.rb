class JoinTable < ActiveRecord::Migration[5.0]
  def change
    create_join_table :communes, :streets do |t|
	
	end
  end
end
