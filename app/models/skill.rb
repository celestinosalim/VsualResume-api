class Skill < ApplicationRecord
  belongs_to :resume
  has_many :tools
  accepts_nested_attributes_for :tools, :allow_destroy => true
  has_many :interpersonals
  accepts_nested_attributes_for :interpersonals, :allow_destroy => true
  has_many :others
  accepts_nested_attributes_for :others, :allow_destroy => true

  after_create :build_skills

  

  def build_skills
    Tool.create(skill: self) 
    Interpersonal.create(skill: self)
    Other.create(skill: self) 
  end

end
