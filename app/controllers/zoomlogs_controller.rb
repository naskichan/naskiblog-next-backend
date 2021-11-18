class ZoomlogsController < ApplicationController

    def index
        @zoomlogs = Zoomlog.all
        render json: @zoomlogs
        #render json: @zoomlogs.groups
    end
    
    def show
        @zoomlog = Zoomlog.find(params[:id])
        render json: @zoomlog
    end

    def create
        @zoomlog = Zoomlog.new(zoomlog_params)
        if @zoomlog.save
            render json: @zoomlog
        else
            render json: @zoomlog.errors, status: :unprocessable_entity
        end
        
    end
    
    def update
        @zoomlog = Zoomlog.update(zoomlog_params)
        render html: "<h1> Lul update gibts nicht</h1>"
        
    end

    def groups
        @groups = Zoomlog.find(params[:id]).groups
        render json: @groups
    end

    private

        def zoomlog_params
            params.require(:zoomlog).permit(:title, :zoomid, :pwd, :pwdisembed, :desc, :prof)
        end
end
