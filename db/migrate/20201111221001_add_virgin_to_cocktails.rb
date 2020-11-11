class AddVirginToCocktails < ActiveRecord::Migration[6.0]
  def change
    add_column :cocktails, :virgin, :boolean, default: false
  end
end
