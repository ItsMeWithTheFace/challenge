class User < ApplicationRecord
  has_secure_password

  validates_length_of       :password, minimum: 8, allow_nil: false, allow_blank: false
  validates_confirmation_of :password, allow_nil: false, allow_blank: false

  before_validation {
    self.email = self.email.to_s.downcase
  }

  has_many :cart

  validates_presence_of     :email
  validates_presence_of     :password
  validates_uniqueness_of   :email
end
