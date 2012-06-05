class Device < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :segment
  belongs_to :manufacturer
  belongs_to :family
  has_and_belongs_to_many :compares
  has_many :specifications
  has_many :items ,:through => :specifications
  has_and_belongs_to_many(:devices,:join_table=>:ingrations,
                           :foreign_key=>:device_a_id,
                           :association_foreign_key=>:device_b_id)
  has_and_belongs_to_many(:devices,:join_table=>:similars,
                           :foreign_key=>:device_c_id,
                           :association_foreign_key=>:device_d_id)
end
