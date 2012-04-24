class Service < ActiveRecord::Base
  has_and_belongs_to_many :locations
  has_and_belongs_to_many :categories
  
  attr_accessible :description, :name
end