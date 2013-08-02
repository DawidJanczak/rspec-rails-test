class Hotel < ActiveRecord::Base
  attr_accessible :name

  belongs_to :city
end
