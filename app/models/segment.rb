class Segment < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :devices
end
