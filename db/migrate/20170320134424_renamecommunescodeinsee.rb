class Renamecommunescodeinsee < ActiveRecord::Migration[5.0]
  def up
    rename_column :communes, :code_inseee, :code_insee
  end
end
