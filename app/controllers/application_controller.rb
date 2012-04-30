class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :all_phrase
  def all_phrase
    @phrases = Phrase.all
    @new_phrase = Phrase.new
  end

end
