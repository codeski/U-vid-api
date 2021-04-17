class VideosController < ApplicationController
    def index
        videos = Video.all

        # render json: videos.to_json(except: [:updated_at], include: {category: {only: [:name]}})
        # , {include: [:category]}
        render json: VideoSerializer.new(videos)
    end

    def show
        video = Video.find_by(id: params[:id])

        # render json: video.to_json(except: [:updated_at], include: {category: {only: [:name]}})
        render json: VideoSerializer.new(video)
    end
end
