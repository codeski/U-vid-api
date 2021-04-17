class CategoriesController < ApplicationController
    def index
        categories = Category.all

        render json: CategorySerializer.new(categories, include: [:videos])
    end

    def show
        category = Category.find_by(params[:id])

        render json: CategorySerializer.new(category)
    end
end
