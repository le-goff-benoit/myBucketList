class IdeasController < ApplicationController
  def index
    @search_term = params[:query]
    @search_author = params[:author]
    @ideas = Idea.all
  end

  def create
    @idea_title = params[:title]
    newIdea = Idea.new
    newIdea.title = @idea_title
    newIdea.save!
    redirect_to root_path
  end

  def new
  end
end
