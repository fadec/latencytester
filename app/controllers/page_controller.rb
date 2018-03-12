class PageController < ApplicationController
  def index
    @time = params[:time]
    respond_to do |format|
      format.json { render json: {time: @time} }
      format.js 
      format.html
    end
  end
end
