class AddAlternativeToRecipes < ActiveRecord::Migration
  def change
    # change_table :recipes do |t|
    #   t.text :alternative
    # end
    add_column :recipes, :alternative, :string
  end
end
