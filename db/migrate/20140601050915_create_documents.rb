class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :title
      t.string :date
      t.text :contents
      t.text :sent1
      t.text :sent2
      t.text :sent3
      t.text :sent4

      t.timestamps
    end
  end
end
