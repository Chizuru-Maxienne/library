class User < ActiveRecord::Base
  REGEX_EMAIL_PATTERN=/\A[\w\.\-]+@(a-z+\d)\.(a-z)+\$/
  validates :email ,presence:true,
                    format: {with: REGEX_EMAIL_PATTERN}
  has_secure_password
  validates :password ,presence:true,
            length: {minimum: 8, maximum: 32}
end
