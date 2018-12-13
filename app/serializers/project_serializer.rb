class ProjectSerializer < ActiveModel::Serializer
  attributes :name, :url, :description
  has_one :resume
end
