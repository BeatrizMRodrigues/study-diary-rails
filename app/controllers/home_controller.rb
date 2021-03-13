class HomeController < ApplicationController
    def index
        #código, acessar db, etc
        #render 'index'
        @study_items = ['Ruby', 'Java']
    end
end
