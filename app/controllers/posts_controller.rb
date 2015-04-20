class PostsController < ApplicationController
  def index
          
    if current_user
     @posts = Post.all
      
     else
      redirect_to new_session_path
     end
    
  end
   def create
     
     #render text:  params[:post_id] 
    Post.find_by(params[:post_id]).comments.create(body: params[:comment], post_id: params[:post_id])
    redirect_to posts_main_path
end
end