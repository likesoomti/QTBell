class CreateBoards < ActiveRecord::Migration[5.1]
  def change
    create_table :boards do |t|
      t.string :title
      t.string :content
      t.string :startBook
      t.string :startChapter
      t.string :startVerse
      t.string :endBook
      t.string :endChapter
      t.string :endVerse

      t.timestamps
    end
  end
end
