class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title
      t.string :description
      t.string :name
      t.string :affiliate
      t.string :link

      t.timestamps
    end
  end
end
