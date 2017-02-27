# README

## Welcome to blogsy!

We have a number of bloggers using our system.

As of 15:33:05, Monday, February 27, 2017, our most
prolific user is dejuan.bosco with 95 posts!!


Query and results are below.

SELECT COUNT(p.body) AS posts, u.username FROM users AS u INNER JOIN posts AS p ON u.id = p.user_id GROUP BY u.id;
 posts |     username
-------+------------------
    62 | lonzo.fahey
    61 | katarina.flatley
    10 | prudence_haley
    22 | dereck
    95 | dejuan.bosco
