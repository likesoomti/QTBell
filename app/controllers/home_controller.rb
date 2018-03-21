class HomeController < ApplicationController

    def index
        @title = "DAILY QUIET TIME"
        @subtitle = "삶의 원동력이 되는 하나님의 말씀"
    end

    def login
        redirect_to "/users/sign_in"
    end

end
