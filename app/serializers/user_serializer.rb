class UserSerializer < ActiveModel::Serializer
  attributes :username, :role, :avatar
end
