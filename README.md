# README

## Welcome to blogsy!

We have a number of bloggers using our system.

As of 10:58:50, Tuesday, February 28, 2017, our most
prolific user is nikolas with 67 posts!!


Query and results are below.
```

User.order(posts_count: :desc).first

SELECT  "users".* FROM "users" ORDER BY "users"."posts_count" DESC LIMIT $1  [["LIMIT", 1]]


#<User id: 3, username: "nikolas", email_address: "theresa@medhurstschultz.io", bio: nil, created_at: "2017-02-27 22:07:16", updated_at: "2017-02-27 22:07:16", posts_count: 67>

```
