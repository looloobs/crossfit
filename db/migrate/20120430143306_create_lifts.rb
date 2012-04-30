class CreateLifts < ActiveRecord::Migration
  def change
    create_table :lifts do |t|
      t.string :name
      t.string :description
      t.string :body
      t.string :body_html

      t.timestamps
    end
  end
end
