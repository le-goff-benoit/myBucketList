class IdeasController < ApplicationController
  def index
    @search_term = params[:query]
    @search_author = params[:author]
  end
end
