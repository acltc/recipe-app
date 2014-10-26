class RemoveContributorFromRecipes < ActiveRecord::Migration
  def change
    remove_column :recipes, :contributor, :string
  end
end
