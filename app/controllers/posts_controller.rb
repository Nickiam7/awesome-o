class PostsController < ApplicationController
  before_action :authenticate_user!

  def create
    @post = Post.new(post_params)
    @post.user = current_user

    if @post.save
      redirect_to(blog_contents_path)
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, content: [])
  end
end
