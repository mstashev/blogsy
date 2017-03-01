require 'test_helper'

class CommentTest < ActiveSupport::TestCase

  should belong_to :post
  should belong_to :user
  should validate_presence_of :body

  test "Test presences" do
    comment = build(:comment)
    comment.user = nil
    refute comment.save
    comment.user = create(:user)
    comment.post = nil
    refute comment.save
    comment.post = create(:post)
    assert comment.save
  end

end
