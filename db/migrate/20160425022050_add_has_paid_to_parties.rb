class AddHasPaidToParties < ActiveRecord::Migration
  def change
    add_column :parties, :has_paid, :boolean
  end
end
