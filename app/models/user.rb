# email:string
# password_digest:string
#
# To create a User
# has_secure_password creates virtual fields such as:
# password:string virtual
# password_confirmation:string virtual
class User < ApplicationRecord
  has_many :twitter_accounts
  has_many :tweets
  has_secure_password

  validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "must be a valid email address" }
end
