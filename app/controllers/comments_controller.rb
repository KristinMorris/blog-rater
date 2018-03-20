class CommentsController < ApplicationController
  before_action :authenticate_user!

  before_action :set_post
  def create
    @comment = @post.comments.new(comment_params)
    @comment.save
    redirect_to post_path(@post), success: 'Comment created'
  end

  def update

  end

  def destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :post_id)
  end

  def set_post
    @post = Post.find(params[:post_id])
  end

end
