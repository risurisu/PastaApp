class AddTableNumberToParty < ActiveRecord::Migration
  def change
    add_column :parties, :table_number, :integer
  end
end
