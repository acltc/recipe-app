class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :ingredients
      t.string :rating
      t.string :directions
      t.string :contributor
      t.string :photo
      t.string :prep_time
      t.string :servings
      t.string :serving_size

      t.timestamps
    end
  end
end
