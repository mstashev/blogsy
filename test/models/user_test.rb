require 'test_helper'

class UserTest < ActiveSupport::TestCase

  should have_many(:posts)
  should validate_presence_of :email_address
  should validate_presence_of :username

  # def setup
  #   @user = FactoryGirl.build(:user)
  # end
  #
  # test "Should have an email" do
  #   @user.email_address = nil
  #   refute @user.save
  # end



end
