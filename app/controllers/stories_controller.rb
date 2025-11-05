class StoriesController < ApplicationController
  before_action :authenticate_user!

  def index
    @stories = Story.all
  end

  def show
    @story = Story.find(params[:id])
  end


  def new
    @story = Story.new
    @chapters = Chapter.all
  end

  def create
    @story = Story.new(story_params)
    @story.user_id = current_user.id  # link story to creator if needed

    if @story.save
      redirect_to stories_path, notice: "Story created successfully."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def story_params
    params.require(:story).permit(:title, :inviteCode, :image, :locked, chapter_ids: [])
  end


end
