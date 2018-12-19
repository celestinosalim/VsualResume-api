class User < ApplicationRecord
    has_one :resume
    has_secure_password
    after_create :build_resume

  def build_resume
    Resume.create(user: self) # Associations must be defined correctly for this syntax, avoids using ID's directly.
  end


end
