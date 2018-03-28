json.extract! board, :id, :title, :content, :book, :startChapter, :startVerse, :bookAbbr, :endChapter, :endVerse, :created_at, :updated_at
json.url board_url(board, format: :json)
