require 'test_helper'

class UsersTest < ActionDispatch::IntegrationTest

  def setup
    10.times{ create(:post) }
  end

  test 'users#index' do
    setup
    get '/users'
    assert response.ok?
    json = JSON.parse(response.body)
    assert json.first['posts_count']
    assert json.first['username']
    refute json.first['email_address']
    assert json.first['bio']
  end

  test 'users#create' do
    post '/users', params: {
            user: {
              username: "username",
              email_address: "test@example.com",
              bio: "My Bio"
            }
          }
    User.create(
      username: 'username',
      email_address: 'test@example.com',
      bio: 'My Bio'
    )
    assert response.ok?
    assert_equal "username", User.last.username
    json = JSON.parse(response.body)
    assert_equal "username", json["username"]
  end

end
