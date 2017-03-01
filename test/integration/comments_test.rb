require 'test_helper'

class CommentsTest < ActionDispatch::IntegrationTest

  def setup
    10.times{ create(:comment) }
  end

  test "comments#index" do
    setup
    comment = Comment.last
    get "/posts/#{comment.post_id}/comments"
    assert response.ok?
    json = JSON.parse(response.body)
    assert_equal comment.post.comments.size, json.length
    assert json.detect{|com| com['body'] == comment.body}
  end
end
