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

    def bookList
        grouped_options = {
            'oldTestament' => [
                ['창세기','ge'],
                ['출애굽기','exo'],
                ['레위기','lev'],
                ['민수기','num'],
                ['신명기','deu'],
                ['여호수아','josh'],
                ['사사기','jdgs'],
                ['룻기','ruth'],
                ['사무엘상','1sm'],
                ['사무엘하','2sm'],
                ['열왕기상','1ki'],
                ['열왕기하','2ki'],
                ['역대상','1chr'],
                ['역대하','2chr'],
                ['에스라','ezra'],
                ['느헤미야','neh'],
                ['에스더','est'],
                ['욥기','job'],
                ['시편','psa'],
                ['잠언','prv'],
                ['전도서','eccl'],
                ['아가','ssol'],
                ['이사야','isa'],
                ['예레미야','jer'],
                ['예레미야 애가','lam'],
                ['에스겔','eze'],
                ['다니엘','dan'],
                ['호세아','hos'],
                ['요엘','joel'],
                ['아모스','amos'],
                ['오바댜','obad'],
                ['요나','jonah'],
                ['미가','mic'],
                ['나훔','nahum'],
                ['하박국','hab'],
                ['스바냐','zep'],
                ['학개','hag'],
                ['스가랴','zep'],
                ['말라기','mal']
            ],
            'newTestament' => [
                ['마태복음','mat'],
                ['마가복음','mark'],
                ['누가복음','luke'],
                ['요한복음','john'],
                ['사도행전','acts'],
                ['로마서','rom'],
                ['고린도전서','1cor'],
                ['고린도후서','2cor'],
                ['갈라디아서','gal'],
                ['에베소서','eph'],
                ['빌립보서','phi'],
                ['골로새서','col'],
                ['데살로니가전서','1th'],
                ['데살로니가후서','2th'],
                ['디모데전서','1tim'],
                ['디모데후서','2tim'],
                ['디도서','titus'],
                ['빌레몬서','phmn'],
                ['히브리서','heb'],
                ['야고보서','jas'],
                ['베드로전서','1pet'],
                ['베드로후서','2pet'],
                ['요한1서','1jn'],
                ['요한2서','2jn'],
                ['요한3서','3jn'],
                ['유다서','jude'],
                ['요한계시록','rev']
            ]
        }
        return grouped_options
 
    end


    def randomImage
        image = Array.new
        image.push("https://s3.ap-northeast-2.amazonaws.com/dailyquiettime/quite1.jpg")
        image.push("https://s3.ap-northeast-2.amazonaws.com/dailyquiettime/quite2.jpg")
        image.push("https://s3.ap-northeast-2.amazonaws.com/dailyquiettime/quite3.jpg")
        image.push("https://s3.ap-northeast-2.amazonaws.com/dailyquiettime/quite4.jpg")
        image.push("https://s3.ap-northeast-2.amazonaws.com/dailyquiettime/quite5.jpg")
        image.push("https://s3.ap-northeast-2.amazonaws.com/dailyquiettime/quite6.jpg")
    end
end
