class Skill < ApplicationRecord
  belongs_to :resume
  has_many :tools
  accepts_nested_attributes_for :tools, :allow_destroy => true
  has_many :interpersonals
  accepts_nested_attributes_for :interpersonals, :allow_destroy => true
  has_many :others
  accepts_nested_attributes_for :others, :allow_destroy => true
end
