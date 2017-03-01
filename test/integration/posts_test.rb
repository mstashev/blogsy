require 'test_helper'

class PostsTest < ActionDispatch::IntegrationTest

  def setup
    10.times{ create(:post) }
  end

  test 'posts#index' do
    setup
    get '/posts'
    assert response.ok?
    json = JSON.parse(response.body)
    assert json.first['username']
  end

  test 'posts#show' do
    setup
    post = Post.last
    get "/posts/#{post.id}"
    assert response.ok?
    json = JSON.parse(response.body)
    assert json['username']
  end

end
