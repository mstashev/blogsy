# README

## Welcome to blogsy!

We have a number of bloggers using our system.

As of 15:33:05, Monday, February 27, 2017, our most
prolific user is dejuan.bosco with 95 posts!!


Query and results are below.
```
(0.6ms)  SELECT COUNT(*) FROM "posts" WHERE (user_id=5)
=> 10
2.4.0 :016 > User.select('username').where('id=5')
 User Load (0.4ms)  SELECT "users"."username" FROM "users" WHERE (id=5)
=> #<ActiveRecord::Relation [#<User id: nil, username: "prudence_haley">]>


2.4.0 :005 > Post.all.where('user_id=4').count
 (0.5ms)  SELECT COUNT(*) FROM "posts" WHERE (user_id=4)
=> 62
2.4.0 :015 > User.select('username').where('id=4')
 User Load (0.5ms)  SELECT "users"."username" FROM "users" WHERE (id=4)
=> #<ActiveRecord::Relation [#<User id: nil, username: "lonzo.fahey">]>


2.4.0 :006 > Post.all.where('user_id=3').count
 (0.5ms)  SELECT COUNT(*) FROM "posts" WHERE (user_id=3)
=> 22
2.4.0 :014 > User.select('username').where('id=3')
  User Load (0.5ms)  SELECT "users"."username" FROM "users" WHERE (id=3)
 => #<ActiveRecord::Relation [#<User id: nil, username: "dereck">]>


2.4.0 :007 > Post.all.where('user_id=2').count
 (0.5ms)  SELECT COUNT(*) FROM "posts" WHERE (user_id=2)
=> 95
2.4.0 :013 > User.select('username').where('id=2')
User Load (0.4ms)  SELECT "users"."username" FROM "users" WHERE (id=2)
=> #<ActiveRecord::Relation [#<User id: nil, username: "dejuan.bosco">]>


2.4.0 :008 > Post.all.where('user_id=1').count
 (0.6ms)  SELECT COUNT(*) FROM "posts" WHERE (user_id=1)
=> 61
2.4.0 :012 > User.select('username').where('id=1')
  User Load (0.3ms)  SELECT "users"."username" FROM "users" WHERE (id=1)
  => #<ActiveRecord::Relation [#<User id: nil, username: "katarina.flatley">]>
```
