class AddUsersToParty < ActiveRecord::Migration
  def change
    add_reference :parties, :user, index: true, foreign_key: true
  end
end
