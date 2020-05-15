class CommentsController < ApplicationController

    before_action :set_threadd

    def index
        @comments = Comment.all 
        render json: @comments 
        # except: [:created_at, :updated_at]
    end 
  
    def create
        @comment = @threadd.comments.new(comment_params) 
        @comment.date = DateTime.now
        if @comment.save 
        render json: @threadd
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
        @comment = Comment.find(params[:id])
        @comment.delete 
        render json: {commentId: @comment.id}
    end 

    def set_threadd
         @threadd = Threadd.find(params[:threadd_id])
     end 

    private

    def comment_params
        params.require(:comment).permit(:threadd_id, :username, :date, :comment_description)
    end 
end
