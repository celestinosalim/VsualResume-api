class SkillSerializer < ActiveModel::Serializer
  attributes :others, :tools, :interpersonals
  has_one :resume
end
