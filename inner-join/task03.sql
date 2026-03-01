SELECT
    c.id AS comment_id,
    c.content AS comment_content,
    p.title AS post_title,
    u.email AS commenter_email,
    c.created_at
FROM comments c
INNER JOIN posts p ON c.post_id = p.id
INNER JOIN users u ON c.user_id = u.id
ORDER BY c.created_at DESC;