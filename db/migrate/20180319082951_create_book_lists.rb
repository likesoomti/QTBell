class CreateBookLists < ActiveRecord::Migration[5.1]
  def change
    create_table :book_lists do |t|
      t.string :name
      t.integer :endChapter
      t.integer :group

      t.timestamps
    end
  end
end
