class HomeController < ApplicationController
  def index
    @video = Video.last(:order => "RANDOM()")
    @phrases = Phrase.all
    @new_phrase = Phrase.new
    
  end
end
