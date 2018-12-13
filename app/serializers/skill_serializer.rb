class SkillSerializer < ActiveModel::Serializer
  attributes :id, :skill_other, :skill_tool, :skill_interpersonal
  has_one :resume
end
