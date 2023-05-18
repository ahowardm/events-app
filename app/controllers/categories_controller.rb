class CategoriesController < ApplicationController
    def index
        @categories = Category.all
    end

    def show
        @category = Category.find params[:id]
    end

    def new
        @category = Category.new
    end

    def create
        cat = Category.new( name: params[:category][:name])
        if cat.save
            redirect_to cat, notice: 'Categoría creada con éxito'
        else
            redirect_to new_category_path, alert: 'No se pudo crear la categoría'
        end
    end
end