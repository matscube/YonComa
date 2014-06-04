class ModifyColumn < ActiveRecord::Migration
  def change
  	remove_column :documents, :image
  	add_column :documents, :image1, :text
  	add_column :documents, :image2, :text
  	add_column :documents, :image3, :text
  	add_column :documents, :image4, :text
  end
end
