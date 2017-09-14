class Place < ApplicationRecord
  geocoded_by :address
end
