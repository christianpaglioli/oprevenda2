class Compare < ActiveRecord::Base
  # attr_accessible :title, :body
  has_and_belongs_to_many :devices
  belongs_to :user
end
