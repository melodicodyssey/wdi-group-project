class CommentsController < ApplicationController
  def index
    @clip = Clip.find(params[:clip_id])
    @comments = @clip.comments
  end

  def new
    @comment = Comment.new
  end

  def create
    clip_id = params[:clip_id]
    comment_params = params.require(:comment).permit(:body)
    comment = Comment.create(comment_params)
    comment.clip = Clip.find(clip_id)
    comment.save
    redirect_to clip_comments_path
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
