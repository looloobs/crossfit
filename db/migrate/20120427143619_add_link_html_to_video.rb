class AddLinkHtmlToVideo < ActiveRecord::Migration
  def change
    add_column :videos, :link_html, :string
  end
end
