require 'test_helper'

class CommentTest < ActiveSupport::TestCase

  should belong_to :post
  should belong_to :user
  should validate_presence_of :body
  # should validate_presence_of :post
  # should validate_presence_of :user

  test "Test presences" do
    comment = build(:comment)
    # puts comment.inspect
    comment.user = nil
    refute comment.save
    comment.user = create(:user)
    comment.post = nil
    refute comment.save
    comment.post = create(:post)
    # puts comment.inspect
    assert comment.save
  end

end
