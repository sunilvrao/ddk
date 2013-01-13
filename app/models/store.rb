class Store < ActiveRecord::Base
  attr_accessible :user_id, :cc_auth_id, :description, :logo, :name, :locations_attributes
  
  belongs_to :user
  has_many :locations, :dependent => :destroy
  accepts_nested_attributes_for :locations, :allow_destroy => :true
  

end
