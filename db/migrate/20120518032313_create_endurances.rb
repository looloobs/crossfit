class CreateEndurances < ActiveRecord::Migration
  def change
    create_table :endurances do |t|

      t.timestamps
    end
  end
end
