class ProjectSerializer < ActiveModel::Serializer
  attributes :name, :url, :description, :image
  has_one :resume
end
