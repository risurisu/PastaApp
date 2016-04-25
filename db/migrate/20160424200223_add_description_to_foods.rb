class AddDescriptionToFoods < ActiveRecord::Migration
  def change
    add_column :foods, :description, :text
  end
end
