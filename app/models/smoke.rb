class Smoke < ActiveRecord::Base
  attr_accessible :quantity, :date
  belongs_to :user
end
