class Api::V1::CategoriesController < ApplicationController

    def index
        categories = Category.all
        render json: categories
    end

    def show
        category = Category.find(params[:id])
        render json: category
    end

    def create
        category = Category.new(category_params)
        if category.save
            render json: category
        else
            render error: {error: "Unable to create category."}
        end
    end

    private

    def category_params
        require.params(:category).permit(:food_type)
    end

end
