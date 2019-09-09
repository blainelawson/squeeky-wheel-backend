class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :zipcode, :username
end
