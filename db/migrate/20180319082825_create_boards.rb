class CreateBoards < ActiveRecord::Migration[5.1]
  def change
    create_table :boards do |t|
      t.string :title
      t.string :content
      t.string :book
      t.string :startChapter
      t.string :startVerse
      t.string :endChapter
      t.string :endVerse
      t.string :bookAbbr
      t.string :randomPhotoBackground
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
