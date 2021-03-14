class HomeController < ApplicationController
    def index
        #código, acessar db, etc
        #render 'index'
        @study_items = StudyItem.all()
    end
end
