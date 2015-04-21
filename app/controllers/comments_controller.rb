class CommentsController < ApplicationController
    def create
        
        Comment.create(body: params[:body], post_id: params[:post_id], user_id: session[:user_id])
        redirect_to posts_main_path
        
         
    end
end
