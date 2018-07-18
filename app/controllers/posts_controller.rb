class PostsController < ApplicationController

   def index
     posts = Post.all
     render json: posts
   end

   def create
     post = Post.new(post_params)
     if post.save
      render json: post
     else
      render json: { errors: post.errors.full_messages }, status: :unprocessable_entity
     end
   end

   def show
     post = Post.find(params[:id])
     render json: post
   end

   def update
     post = Post.find(params[:id])
     if post.update
      render json: post
     else
      render json: { errors: post.errors.full_messages }, status: :unprocessable_entity
     end
   end

   def update
     post = Post.find(params[:id])
     if post.update(post_params)
      render json: post
     else
      render json: post
     end
   end

   def destroy
     post = Post.find(params[:id])
     render json: post
   end

   private
      def post_params
        params.require(:post).permit(:content)
      end
end
