class LinksController < ApplicationController

  def index
    @link = Link.new

    @links = Link.all
    @prefix = "http://localhost:3000/"
  end

  def create

    random_code = SecureRandom.alphanumeric
    @link = Link.new(short_id: random_code, long_id: params[:link][:long_id])

    if @link.save
      redirect_to root_path
    end

  end

  def show
    redirect_to Link.where(short_id: params[:code]).first.long_id
  end

end
