class SocialMediumSerializer < ActiveModel::Serializer
  attributes :name, :link
  has_one :resume
end
