class Item < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :specifications
  belongs_to :category
  has_many:devices, through=> :specifications
end
