class SocialMediumSerializer < ActiveModel::Serializer
  attributes :id, :name, :logo
  has_one :resume
end
