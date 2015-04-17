class PostsController < ApplicationController
  def index
          
    if current_user
     @posts = Post.all
      
     else
      redirect_to new_session_path
     end
    
  end
   def create
     
     render text:  params[:post_id] 
     
   end
end
