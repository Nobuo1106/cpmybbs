class TopicsController < ApplicationController
  before_action :set_topic, only: %i[show destroy]

  def index
    @topic = Topic.new
  end

  def create
    @topic = Topic.new(topic_params)
    # 保存に失敗した時も考慮するように
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

  # 必要なパラメータのみ受け取るように
  def topic_params
    params.require(:topic).permit(:title)
  end

  # @topicのセットの共通化
  def set_topic
    @topic = Topic.find(params[:id])
  end
end
