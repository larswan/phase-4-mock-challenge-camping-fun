class CamperActivitiesSerializer < ActiveModel::Serializer
  attributes :id, :activities 

  belongs_to :camper
  has_many :signups, through: :campers 
  
end
