class HomeController < ApplicationController
  def index
    @video = Video.last
    @phrases = Phrase.all
    @new_phrase = Phrase.new
    
  end
end
