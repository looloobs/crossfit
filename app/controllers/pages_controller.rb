class PagesController < ApplicationController
  def show
    @phrases = Phrase.all
    @new_phrase = Phrase.new
    # filter the params[:id] here to allow only certain values like
    if params[:id].match /what_is_crossfit|where_is_crossfit|help/
      render :partial => params[:id]
    else
      render :file => "/path/to/some/404_template", :status => 404
    end
  end

end
