class AddSmallToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :small, :string
  end
end
