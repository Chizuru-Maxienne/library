class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books, :id =>false do |t|
      t.string :isbn
      t.string :title
      t.string :author
      t.string :category
      t.string :publisher
      t.date :copyright
      t.text :description

      t.timestamps null: false
    end
  end
end
