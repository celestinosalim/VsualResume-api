class UserSerializer < ActiveModel::Serializer
  attributes :username, :role, :last_login, :avatar
end
