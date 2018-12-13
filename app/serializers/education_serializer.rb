class EducationSerializer < ActiveModel::Serializer
  attributes :start_date, :end_date, :location, :degree, :university, :description
  has_one :resume
end
