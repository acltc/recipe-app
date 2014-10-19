class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :ingredients
      t.integer :rating
      t.string :directions
      t.string :contributor
      t.string :photo
      t.integer :prep_time
      t.integer :servings
      t.string :serving_size

      t.timestamps
    end
  end
end
