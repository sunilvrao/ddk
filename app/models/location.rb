class Location < ActiveRecord::Base
  belongs_to :store
  attr_accessible :address1, :address2, :city, :email, :phone, :state, :type, :zip, :store_id
end
