require 'test_helper'

class PostTest < ActiveSupport::TestCase

  should belong_to(:user)
  should validate_presence_of :title
  should validate_presence_of :body
  

end
