class Sleep < ActiveRecord::Base
  attr_accessible :hours_slept, :date
  belongs_to :user
end
