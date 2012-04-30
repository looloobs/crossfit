class Video < ActiveRecord::Base
attr_accessible :affiliate, :description, :link, :name, :title, :body
require 'auto_html'
auto_html_for :body do
  html_escape
  image
  youtube(:width => 640, :height => 360)
  link :target => "_blank", :rel => "nofollow"
  simple_format
end
auto_html_for :small do
  html_escape
  image
  youtube(:width => 400, :height => 250)
  link :target => "_blank", :rel => "nofollow"
  simple_format
end
def self.random
  ids = connection.select_all("SELECT id FROM videos")
  find(ids[rand(ids.length)]["id"].to_i) unless ids.blank?
end
end
