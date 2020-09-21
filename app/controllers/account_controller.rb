class AccountController < ApplicationController
  def ideas
    @myIdeas = Idea.all
  end
end
