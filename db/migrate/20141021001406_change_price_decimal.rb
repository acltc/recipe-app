class ChangePriceDecimal < ActiveRecord::Migration
  def change
    change_column :recipes, :prep_time, :decimal, precision: 7, scale: 2
  end
end
