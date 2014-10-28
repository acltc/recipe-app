class Recipe < ActiveRecord::Base
  has_many :ingredients
  has_many :categorized_recipes
  has_many :categories, :through => :categorized_recipes
  belongs_to :user


  def ingredient_list
    return ingredients.split(",")
  end

  def directions_list
    return directions.split(",")
  end

  def friendly_created_at
    return created_at.strftime("%B %e, %Y")
  end
end
