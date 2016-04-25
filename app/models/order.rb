class Order < ActiveRecord::Base

  belongs_to :user
  belongs_to :food
  belongs_to :party

end
