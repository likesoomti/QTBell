module BoardsHelper
    extend self

    def registerBoardTime(board)
        return board.created_at.to_s[0..12]+"시"
    end
    
    def readBibleFromTo(board)
        return board.startBook+" "+ board.startChapter+":"+board.startVerse+" - "+board.endBook+" "+board.endChapter+":"+board.endVerse
    end

    def startQT(user)
        return "QT시작 "+((Time.zone.today-user.created_at.to_date).to_i+1).to_s+ "일째"
    end

    def countQT(user)
        return user.board.count.to_s+"개의 말씀"
    end
end
