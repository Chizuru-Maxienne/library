class CreateBookTypes < ActiveRecord::Migration
  def change
    create_table :book_types do |t|
      t.string :category
      t.timestamps null: false
    end
  end
end
