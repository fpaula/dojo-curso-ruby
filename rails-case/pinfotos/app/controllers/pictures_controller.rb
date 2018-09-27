class PicturesController < ApplicationController
  def index
    @pictures = Picture.all
    @grayscale = params[:grayscale]
  end
end
