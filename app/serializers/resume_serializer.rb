class ResumeSerializer < ActiveModel::Serializer
  attributes :id, :education, :skill, :experience, :project, :profile, :social_media
  has_one :user
end
