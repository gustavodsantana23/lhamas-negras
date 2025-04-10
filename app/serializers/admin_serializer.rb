class AdminSerializer
  include JSONAPI::Serializer
  attributes :id, :email
end
