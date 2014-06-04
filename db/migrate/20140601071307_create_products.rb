class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.string :date
      t.text :contents
      t.text :sent1
      t.text :sent2
      t.text :sent3
      t.text :sent4
      t.text :image1
      t.text :image2
      t.text :image3
      t.text :image4

      t.timestamps
    end
  end
end
