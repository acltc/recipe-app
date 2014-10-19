class Recipe < ActiveRecord::Base
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
