class PlaceRelationship < ApplicationRecord
  belongs_to :place
  belongs_to :user
end
