class CategoriesController < ApplicationController
    def index
        categories = Category.all

        render json: CategorySerializer.new(categories, include: [:videos])
    end

    def create
        category = Category.new(category_params)
        if category.save
            render json: CategorySerializer.new(category)
        else
            render json: {message: "Something went wrong"}
        end
    end

    def update 
        category = Category.find_by(id: params[:id])
        if category.update(category_params)
            render json: CategorySerializer.new(category)
        else
            render json: {message: "Something went wrong"}
        end
    end

    def destroy
        category = Category.find_by(id: params[:id])
        if category.videos
            category.videos.each do |v|
                v.destroy
            end
        end
        category.destroy 
        render json: {message: "Deleted on the backend"}
    end

    def category_params
        params.require(:category).permit(:name)
    end
end
