class AddPartyToOrder < ActiveRecord::Migration
  def change
    add_reference :orders, :party, index: true, foreign_key: true
  end
end
