SELECT
    p.id  AS post_id,
    p.title,
    c.id,
    c.content
FROM posts p
FULL OUTER JOIN comments c ON p.id = c.post_id;