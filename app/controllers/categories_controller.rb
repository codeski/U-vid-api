class CategoriesController < ApplicationController
    def index
        categories = Category.all

        render json: CategorySerializer.new(categories, include: [:videos])
    end

    # def show
    #     category = Category.find_by(params[:id])

    #     render json: CategorySerializer.new(category)
    # end

    def create
        # byebug
        category = Category.new(category_params)
        if category.save
            render json: CategorySerializer.new(category)
        else
            render json: {status: "error", code: 3000, message: "Something went wrong"}
        end
    end

    def category_params
        params.require(:category).permit(:name)
    end
end
