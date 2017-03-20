class Fields < ActiveRecord::Migration[5.0]
  def up
	add_column :communes, :name, :string
	add_column :communes, :code_inseee, :string
	
	add_column :intercommunalities, :name, :string
	add_column :intercommunalities, :siren, :string
	
	add_column :streets, :title, :string
	add_column :streets, :from, :integer
	add_column :streets, :to, :integer
  end
  def down
	remove_column :communes, :name
	remove_column :communes, :code_inseee
	
	remove_column :intercommunalities, :name
	remove_column :intercommunalities, :siren
	
	remove_column :streets, :title
	remove_column :streets, :from
	remove_column :streets, :to
  end
end
