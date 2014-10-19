class Recipe < ActiveRecord::Base

  def ingredients_list
    return ingredients.split(",")
  end

  def directions_list
    return directions.split(",")
  end
end
