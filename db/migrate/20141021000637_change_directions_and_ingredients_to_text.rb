class ChangeDirectionsAndIngredientsToText < ActiveRecord::Migration
  def change
    change_table :recipes do |t|
      t.change :directions, :text
      t.change :ingredients, :text
    end
  end
end
