class Product < ActiveRecord::Base
  belongs_to :user
  attr_accessible :name, :price
  validates :name, :uniqueness => {:case_sensitive => false}
  validates :price, :presence => true, :numericality => true
end
