USE ex32;

-- 7. Permitir a pesquisa de todos os videos de determinado autor;
SELECT * FROM videos_by_author WHERE owner_username = 'user1';

-- 8. Permitir a pesquisa de comentarios por utilizador, ordenado inversamente pela data;
SELECT * FROM comments_by_author WHERE owner_username = 'user2' ORDER BY shared_date DESC;

-- 9. Permitir a pesquisa de comentarios por videos, ordenado inversamente pela data;
SELECT * FROM comments WHERE video_id = 1 ORDER BY shared_date DESC;

-- 10. Permitir a pesquisa do rating medio de um video e quantas vezes foi votado;
SELECT rating_sum, rating_count FROM video_ratings_summary WHERE video_id = 3;