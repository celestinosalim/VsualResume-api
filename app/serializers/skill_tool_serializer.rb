class SkillToolSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_one :skill
end
