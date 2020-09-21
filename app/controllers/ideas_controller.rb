class IdeasController < ApplicationController
  def index
    @search_term = params[:query]
    @search_author = params[:author]
    @ideas = Idea.all
  end

  def create
    @idea_title = params[:title]
    @idea_done_count = params[:done_count]

    newIdea = Idea.new

    newIdea.title = @idea_title
    newIdea.done_count = @idea_done_count

    newIdea.save!

    redirect_to account_ideas_path
  end

  def new
  end
end
