class AddHtmlToVideo < ActiveRecord::Migration
  def change
    add_column :videos, :body_html, :string
  end
end
