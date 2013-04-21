class FlashcardsController < ApplicationController

  before_filter :find_resources, :only => [:index]
  before_filter :find_resource, :except => [:index]

  respond_to :json

  def index
    respond_with @flashcards
  end

  def show
    respond_with @flashcard
  end

  private

  def find_resources
    @flashcards = Flashcard.all
  end

  def find_resource
    @flashcard = Flashcard.find(params[:id])
  end

end
