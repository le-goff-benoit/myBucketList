class HomeController < ApplicationController
  def index
    @ideas = Idea.all.order(created_at: :desc).limit(3)
  end
end
