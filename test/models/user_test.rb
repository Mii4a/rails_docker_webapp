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
require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
