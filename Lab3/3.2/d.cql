USE ex32;

-- 1. Os ultimos 3 comentarios introduzidos para um video;
SELECT * FROM comments WHERE video_id = 1 LIMIT 3;

-- 2. Lista das tags de determinado video;
SELECT tags FROM videos WHERE video_id = 1;

-- 3. Todos os videos com a tag Aveiro (meti tech pq nao tinha aveiro);
SELECT * FROM videos_by_tag WHERE tag = 'tech';

-- 4.a. Os últimos 5 eventos de determinado vídeo realizados por um utilizador;
SELECT * FROM events WHERE video_id = 1 AND user_username = 'user2' LIMIT 5;

-- 4.b. Todos os eventos de determinado utilizador;
SELECT * FROM events_by_user WHERE user_username = 'user2';

-- 4.c. Todos os eventos de determinado utilizador to tipo "pause"
-- Tive de criar index porque event_type não faz parte da Primary Key
CREATE INDEX IF NOT EXISTS ON events_by_user(event_type);
SELECT * FROM events_by_user WHERE user_username = 'user2' AND event_type = 'pause';

-- 5. Videos partilhados por determinado utilizador (maria1987, por exemplo) num determinado periodo de tempo (Agosto de 2017, por exemplo);
SELECT * FROM videos_by_author
WHERE owner_username = 'user1'
AND share_date >= '2023-03-01' AND share_date <= '2023-03-31';

-- 6. Os ultimos 10 videos, ordenado inversamente pela data da partilhada;
-- Não consigo ordernar globalmente sem uma Partition Key, logo não consigo fazer a query.

-- 7. Todos os seguidores (followers) de determinado video;
SELECT * FROM followers WHERE video_id = 1;

-- 8. Todos os comentarios (dos videos) que determinado utilizador esta a seguir (following);
SELECT * FROM comments_by_followed_videos WHERE follower_username = 'user10';

-- 9. Os 5 videos com maior rating;
-- Não dá porque são partições diferentes, só dava se os vídeos tivessem na mesma partição.

-- 10. Uma query que retorne todos os videos e que mostre claramente a forma pela qual estao ordenados;
SELECT * FROM videos_by_author;

-- 11. Lista com as Tags existentes e o numero de videos catalogados com cada uma delas;
SELECT tag, COUNT(*) FROM videos_by_tag GROUP BY tag;



