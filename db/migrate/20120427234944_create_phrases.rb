class CreatePhrases < ActiveRecord::Migration
  def change
    create_table :phrases do |t|
      t.string :body

      t.timestamps
    end
  end
end
