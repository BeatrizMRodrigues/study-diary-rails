class HomeController < ApplicationController
    def index
        #código, acessar db, etc
        #render 'index'
        @study_items = StudyItems.all
    end
end
