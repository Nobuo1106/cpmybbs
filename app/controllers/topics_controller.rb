class TopicsController < ApplicationController
  before_action :set_topic, only: %i[show destroy]

  def index
    @topic = Topic.new
  end

  def create
    @topic = Topic.new(topic_params)
    if @topic.save
      redirect_to topics_path
    else
      render :index
    end
  end

  def destroy
    @topic.destroy
    redirect_to topics_path
  end

  private

  def topic_params
    params.require(:topic).permit(:title)
  end

  def set_topic
    @topic = Topic.find(params[:id])
  end
end
