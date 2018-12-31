class SkillSerializer < ActiveModel::Serializer
  attributes :id, :others, :tools, :interpersonals
  has_one :resume
end
