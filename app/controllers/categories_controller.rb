class CategoriesController < ApplicationController
    before_action :get_category, only: [:show, :edit, :destroy]

    def index
        @categories = Category.all
    end

    def show
    end

    def new
        @category = Category.new
    end

    def edit
    end

    def update
        category = Category.find params[:id]
        if category.update(name: category_params)
            redirect_to category, notice: 'Categoría actualizada con éxito'
        else
            render 'edit'
        end
    end

    def create
        cat = Category.new( name: category_params)
        if cat.save
            redirect_to category_path(cat), notice: 'Categoría creada con éxito'
            # redirect_to cat, notice: 'Categoría creada con éxito' es lo mismo
        else
            redirect_to new_category_path, alert: 'No se pudo crear la categoría'
        end
    end

    def destroy
        @category.destroy
        redirect_to categories_path
    end

    private
        def category_params
            params.require(:category).permit(:name)
        end

        def get_category
            @category = Category.find params[:id]
        end
end