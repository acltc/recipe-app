class AddMoarColumnsToProducts < ActiveRecord::Migration
  def change
    change_table :recipes do |t|
      t.string :photo_2
      t.string :photo_3
      t.string :photo_4
    end
  end
end
