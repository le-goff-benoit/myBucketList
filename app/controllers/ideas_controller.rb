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

  def edit
    @idea_id = params[:id]
    @idea = Idea.find(@idea_id)
  end

  def update
    @idea_id = params[:id]
    @idea = Idea.find(@idea_id)

    @idea.title = params[:title]
    @idea.done_count = params[:done_count]

    @idea.save!

    redirect_to account_ideas_path
  end

  def showidea
    @idea = Idea.find(params[:id])
  end

end
