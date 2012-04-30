class Exercise < ActiveRecord::Base
  attr_accessible :body, :body_html, :description, :name
  
  require 'auto_html'
  auto_html_for :body do
    html_escape
    image
    youtube(:width => 250, :height => 141)
    link :target => "_blank", :rel => "nofollow"
    simple_format
  end
end
