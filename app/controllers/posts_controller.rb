class PostsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    @post = Post.create(content: params[:content])

    render json: {post: @post}
  end

  def display_all_posts
    user = User.find(params[:user_id])
    posts = user.posts

    render json: posts
  end
end
