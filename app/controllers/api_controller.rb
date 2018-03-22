class ApiController < ApplicationController
    def getChapter
        findBook = BookList.where(eng: params[:bookname]).first
        getendchapter = findBook.endChapter
        render :json => getendchapter
     end
end
