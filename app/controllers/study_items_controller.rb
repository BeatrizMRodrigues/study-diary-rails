class StudyItemsController < ApplicationController
    
    def new
        @study_item = StudyItem.new
    end

    def show 
        id = params[:id]
        @study_item = StudyItem.find(id)
    end

    def create
        @study_item = StudyItem.new(study_item_params)

        if @study_item.save
            flash[:notice] = 'Novo item de estudo adicionado'
            redirect_to root_path
        else
            flash[:alert] = 'Não foi possivel adicionar o item de estudo'
            render "new"
        end
    end

    def edit
        set_study_item
    end

    def update
        set_study_item
        if @study_item.update(study_item_params)
            redirect_to @study_item
        else
            render :edit
        end
    end

    def mark_as_done
        set_study_item
        @study_item.status!
        redirect_to @study_item
    end

    private

    def set_study_item
        @study_item = StudyItem.find(params[:id])
    end

    def study_item_params
        params.require(:study_item).permit(:title, :category_id, :status)
    end
end