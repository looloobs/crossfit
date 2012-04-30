class AddBodyHtmlToVideo < ActiveRecord::Migration
  def change
    add_column :videos, :body, :string
  end
end
