class Specification < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :device
  belongs_to :item
end
