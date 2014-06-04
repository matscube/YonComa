class AddColumn < ActiveRecord::Migration
  def change
  	add_column :documents, :image, :text
  end
end
