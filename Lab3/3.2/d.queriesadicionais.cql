USE ex32;

-- 12: Watch Later
CREATE TABLE watch_later (
    user_username TEXT,
    video_id INT,
    video_name TEXT,
    added_date TIMESTAMP,
    PRIMARY KEY (user_username, added_date)
) WITH CLUSTERING ORDER BY (added_date DESC);

INSERT INTO watch_later (user_username, video_id, video_name, added_date) 
VALUES ('user1', 10, 'Dog Training', '2023-04-20 15:00:00');

SELECT * FROM watch_later WHERE user_username = 'user1';

-- 13: Contador de Views de um Vídeo
CREATE TABLE video_view_count (
    video_id INT PRIMARY KEY,
    views COUNTER
);

UPDATE video_view_count SET views = views + 150 WHERE video_id = 1;
UPDATE video_view_count SET views = views + 85 WHERE video_id = 3;

SELECT views FROM video_view_count WHERE video_id = 1;

-- 14: Que vídeos o utilizador x viu no dia y
CREATE TABLE user_watch_history (
    user_username TEXT,
    watch_day DATE,
    watch_time TIMESTAMP,
    video_id INT,
    PRIMARY KEY ((user_username, watch_day), watch_time)
) WITH CLUSTERING ORDER BY (watch_time DESC);

INSERT INTO user_watch_history (user_username, watch_day, watch_time, video_id) VALUES ('user2', '2023-03-01', '2023-03-01 09:50:00', 1);
INSERT INTO user_watch_history (user_username, watch_day, watch_time, video_id) VALUES ('user2', '2023-03-01', '2023-03-01 14:20:00', 4);

SELECT video_id, watch_time FROM user_watch_history WHERE user_username = 'user2' AND watch_day = '2023-03-01';