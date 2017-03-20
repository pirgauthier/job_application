class References < ActiveRecord::Migration[5.0]
  def up
    add_reference :communes, :intercommunality, foreign_key: true
	add_reference :communes_streets, :communes, foreign_key: true
	add_reference :communes_streets, :streets, foreign_key: true
  end
  def down
    remove_reference :communes, :intercommunality
	remove_reference :communes_streets, :communes
	remove_reference :communes_streets, :streets
  end
end
