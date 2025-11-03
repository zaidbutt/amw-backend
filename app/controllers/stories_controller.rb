class StoriesController < ApplicationController
  before_action :authenticate_user!

  def index
    # Placeholder for now — we’ll later pull stories from DB
    @stories = [
      { title: "My First Story", author: "Zaid", chapters: 3 },
      { title: "A Journey Begins", author: "Jon", chapters: 5 }
    ]
  end

  def show
    # Placeholder — find a story by id (later from DB)
  end
end
