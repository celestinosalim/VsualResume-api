class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :url, :description
  has_one :resume
end
