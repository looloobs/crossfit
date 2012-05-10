class CreateMoms < ActiveRecord::Migration
  def change
    create_table :moms do |t|
      t.string :name
      t.string :kid
      t.string :because
      t.string :word_one
      t.string :word_two
      t.string :word_three
      t.string :year
      t.string :change
      t.string :story

      t.timestamps
    end
  end
end
