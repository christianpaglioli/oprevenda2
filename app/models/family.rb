class Family < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :devices
  has_and_belongs_to_many :categories
end
