class SightingSerializer
  include FastJsonapi::ObjectSerializer
  attributes :created_at
  belongs_to :bird 
  belongs_to :location
end

# the below will return the entire bird and location object without 
# serialization -> i.e. you cannot filter which attributes are rendered
# the above syntax allows you to only receive the serialized versions 
# of the related objects attributes

# FastJsonapi::ObjectSerializer
# attributes :created_at, :bird, :location