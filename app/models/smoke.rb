class Smoke < ActiveRecord::Base
  attr_accessible :quantity, :date, :temperature
  belongs_to :user
end
