class Category < ActiveRecord::Base
  has_many :services, :order => :name, :dependent => :destroy, :uniq => true
  has_many :locations, :through => :services, :uniq => true
  
  attr_accessible :description, :name
  
  def results_in_set(locations_set)
    (self.locations & locations_set).try(:size)
  end
end
