class SocialMediumSerializer < ActiveModel::Serializer
  attributes :name, :logo
  has_one :resume
end
