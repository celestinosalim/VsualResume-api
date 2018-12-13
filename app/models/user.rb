class User < ApplicationRecord
    has_one :resume
    has_secure_password
end
