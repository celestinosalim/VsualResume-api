class OtherSerializer < ActiveModel::Serializer
  attributes :name
  has_one :skill
end
