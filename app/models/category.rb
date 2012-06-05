class Category < ActiveRecord::Base
  # attr_accessible :title, :body
  has_and_belongs_to_many :families
  has_many :items
end
