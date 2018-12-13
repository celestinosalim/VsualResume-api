class EducationSerializer < ActiveModel::Serializer
  attributes :id, :start_date, :end_date, :location, :degree, :university, :description
  has_one :resume
end
