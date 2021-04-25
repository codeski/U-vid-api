class CategoriesController < ApplicationController
    def index
        categories = Category.all

        render json: CategorySerializer.new(categories, include: [:videos])
    end

    def create
        # byebug
        category = Category.new(category_params)
        if category.save
            render json: CategorySerializer.new(category)
        else
            render json: {status: "error", code: 3000, message: "Something went wrong"}
        end
    end

    def update 
        category = Category.find_by(id: params[:id])
        if category.update(category_params)
            render json: CategorySerializer.new(category)
        else
            render json: {status: "error", code: 3000, message: "Something went wrong"}
        end
    end

    def destroy
        category = Category.find_by(id: params[:id])
        category.destroy 
        render json: {message: "Deleted on the backend"}
    end

    def category_params
        params.require(:category).permit(:name)
    end
end
