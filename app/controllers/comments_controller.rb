class CommentsController < ApplicationController

    before_action: :set_threadd

    def index
        @comments = @threadd.comment.all 
        render json: @comments
    end 

    def create
        @comment = Comment.new(comment_params) 
        if @comment.save 
        render json: @comment 
        else  
            render json: {error: 'Error creating a new thread please try again'}
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
