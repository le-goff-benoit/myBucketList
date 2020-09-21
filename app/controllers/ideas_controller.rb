class IdeasController < ApplicationController
  def index
    @search_term = params[:query]
    @search_author = params[:author]
    @ideas = Idea.all
  end

  def create
    @idea_title = params[:title]
    puts @idea_title
    redirect_to root_path
  end

  def new
  end
end
