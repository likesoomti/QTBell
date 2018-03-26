json.extract! board, :id, :title, :content, :startBook, :startChapter, :startVerse, :endBook, :endChapter, :endVerse, :created_at, :updated_at
json.url board_url(board, format: :json)
