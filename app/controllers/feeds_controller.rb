class FeedsController < ApplicationController
  def index
    @feeds = Feed.order('title')
  end

  def show
    @feed = Feed.find(params[:id])
  end

  def new
    @feed = Feed.new
  end

  def create
    @feed = Feed.new(feed_params)
    if @feed.save
      redirect_to action: 'index'
    else
      render :new
    end
  end

  def edit
    @feed = Feed.find(params[:id])
  end

  def update
    @feed = Feed.find(params[:id])
    if @feed.update_attributes(feed_params)
      redirect_to action: 'index'
    else
      render :edit
    end
  end

  def destroy
    @feed = Feed.find(params[:id])
    @feed.destroy

    redirect_to action: 'index'
  end

  private

  def feed_params
    params.require(:feed).permit(:title, :url, :image, category_ids: [])
  end
end
