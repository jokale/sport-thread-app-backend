class CommentsController < ApplicationController

    before_action :set_threadd
    # binding.pry 

    def index
        @comments = Comment.all 
        render json: @comments 
    end 
  
    def create           
         
     
        @comment = @threadd.comments.new(comment_params) 
        @comment.date = DateTime.now
        #  binding.pry 
        if @comment.save 
        render json: @threadds
        else  
            render json: {error: 'Error creating a new comment please try again'}
        end 
    end 

    def show
        @comment = Comment.find(params[:id])
        render json: @comment, include: [:comment]
    end 

   
    def update
        # @comment = Comment.find(params[:id])
        # @comment.update(comment_params)
        # render json: @comment
    end 

    def destroy       
        # binding.pry       
        @comment = Comment.find(params[:id])
         @threadd = Threadd.find(@comment.threadd_id)
        @comment.destroy
        render json: @threadd
    end 

  


    private

      def set_threadd
         @threadds = Threadd.find_by_id(params[:threadd_id])
     end 


    def comment_params
        params.require(:comment).permit(:threadd_id, :username, :date, :comment_description, :upvote, :downvote)
    end 
end
