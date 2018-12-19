class ResumeSerializer < ActiveModel::Serializer
  has_one :profile
  # alias_attribute :social_medium, :media
  has_many :social_medium
  has_many :educations
  has_many :experiences
  has_many :projects

  has_many :tools, through: :skills
  has_many :interpersonals, through: :skills
  has_many :others, through: :skills


end
