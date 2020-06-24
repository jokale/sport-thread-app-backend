
class ThreaddsController < ApplicationController

    def index
        @threadds = Threadd.all 
        render json: @threadds, status:200
    end 

    def create
        @threadd = Threadd.new(threadd_params) 
        if @threadd.save 
        render json: @threadd 
        else  
            render json: {error: 'Error creating a new thread please try again'}
        end 
    end 

    def show
        @threadd = Threadd.find(params[:id])
        render json: @threadd
    end 

   
    def update
        @threadd = Threadd.find(params[:id])
        @threadd.update(threadd_params)
        render json: @threadd
    end 

    def destroy
        @threadd = Threadd.find(params[:id])
        @threadd.delete 
        render json: {threaddId: @threadd.id}
    end 


    private

    def threadd_params
        params.require(:threadd).permit(:username, :date, :thread_title, :thread_body, :user_id)
    end 



end
