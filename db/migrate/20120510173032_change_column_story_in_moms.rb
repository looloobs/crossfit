class ChangeColumnStoryInMoms < ActiveRecord::Migration
  def up
    change_table :moms do |t|
          t.change :story, :text
    end
  end

  def down
    change_table :moms do |t|
      t.change :stort, :string
    end
  end
end
