class VideosController < ApplicationController
    def index
        videos = Video.all

        # render json: videos.to_json(except: [:updated_at], include: {category: {only: [:name]}})
        # , {include: [:category]}
        render json: VideoSerializer.new(videos)
    end

    # def show
    #     video = Video.find_by(id: params[:id])

    #     # render json: video.to_json(except: [:updated_at], include: {category: {only: [:name]}})
    #     render json: VideoSerializer.new(video)
    # end

    def create
        # byebug
        video = Video.new(video_params)
        if video.save
            render json: VideoSerializer.new(video)
        else
            render json: {status: "error", code: 3000, message: "Something went wrong"}
        end
    end

    def video_params
        params.require(:video).permit(:title, :notes, :embed, :category_id)
    end
end
