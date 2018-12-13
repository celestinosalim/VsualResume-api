class ExperienceSerializer < ActiveModel::Serializer
  attributes :id, :start_date, :end_date, :location, :role, :company, :description
  has_one :resume
end
