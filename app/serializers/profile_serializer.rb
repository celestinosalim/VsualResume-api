class ProfileSerializer < ActiveModel::Serializer
  attributes :name, :age, :location, :number, :profile_picture, :headline, :about_me, :background_image, :profile_email
  has_one :resume
end
