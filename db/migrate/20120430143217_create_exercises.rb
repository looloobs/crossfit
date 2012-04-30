class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :description
      t.string :body
      t.string :body_html

      t.timestamps
    end
  end
end
