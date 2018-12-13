class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :location, :number, :profile_picture, :headline, :about_me, :background_image
  has_one :resume
end
