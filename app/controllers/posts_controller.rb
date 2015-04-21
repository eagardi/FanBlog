class PostsController < ApplicationController
  def index
          
    if current_user
     @posts = Post.all
      
     else
      redirect_to new_session_path
     end
    
  end
   def create
     Post.create(title: params[:title], comment: params[:comment], user_id: params[:user_id])
     
     #render text:  params[:post_id] 
    #Post.find_by(params[:user_id]).comments.create(body: params[:comment] )
    redirect_to posts_main_path
end
end