class AddFeelingToCocktails < ActiveRecord::Migration[5.2]
  def change
    add_column :cocktails, :feeling, :string
  end
end
