require 'test_helper'

class UserTest < ActiveSupport::TestCase

  should have_many(:posts)
  should validate_presence_of :email_address
  should validate_presence_of :username

end
