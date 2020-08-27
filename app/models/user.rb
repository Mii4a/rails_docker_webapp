# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  email      :string(255)
#  gender     :string(255)
#  name       :string(255)
#  password   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_users_on_gender  (gender) UNIQUE
#
class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i.freeze
  validates :name, presence: true,
                   length: { maximum: 20 }
  validates :email, presence: true,
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  has_secure_password
  VALID_PASSWORD_REGEX = /\A[a-zA-Z0-9]+\z/i.freeze
  validates :password, presense: true,
                       length: { in: 8..20 },
                       format: { with: VALID_PASSWORD_REGEX }
  validates :gender, presence: true,
	             uniqueness: true

end
