class PostsController < ApplicationController
  before_action :set_topic, only: %i[new create]

  def new
    @post = Post.new
  end

  def create
    @post = @topic.posts.build(post_params)
    if @post.save
      redirect_to new_topic_post_path(@topic)
    else
      render :new
    end
  end

  private

  def set_topic
    @topic = Topic.find(params[:topic_id])
  end

  def post_params
    params.require(:post).permit(:name, :body)
  end
end
