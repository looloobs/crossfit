class AddSmallHtmlToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :small_html, :string
  end
end
