package org.example;

import com.datastax.oss.driver.api.core.CqlSession;
import com.datastax.oss.driver.api.core.cql.ResultSet;

public class Queries {
    private final CqlSession session;

    public Queries(CqlSession session) {
        this.session = session;
    }

    public void inserirUtilizador(String username, String nome, String email) {
        String query = "INSERT INTO users (username, name, email, signup_date) VALUES (?, ?, ?, toTimeStamp(now()))";
        this.session.execute(query, username, nome, email);
    }

    public void atualizarUtilizador(String username, String nome, String email) {
        String query = "UPDATE users SET name = ?, email = ? WHERE username = ?";
        this.session.execute(query, nome, email, username);
    }

    public void eliminarUtilizador(String username) {
        String query = "DELETE FROM users WHERE username = ?";
        this.session.execute(query, username);
    }

    public ResultSet getUtilizador(String username) {
        String query = "SELECT * FROM users WHERE username = ?";
        return this.session.execute(query, username);
    }

    // 1. Os últimos 3 comentários introduzidos para um vídeo
    public ResultSet query1(int videoId) {
        String query = "SELECT owner_username, description, shared_date FROM comments WHERE video_id = ? LIMIT 3";
        return this.session.execute(query, videoId);
    }

    // 6. Os últimos 10 vídeos, ordenado inversamente pela data da partilhada
    public ResultSet query6() {
        String query = "SELECT video_id, name, share_date FROM videos LIMIT 10"; 
        return this.session.execute(query);
    }

    // 9. Os 5 vídeos com maior rating
    public ResultSet query9() {
        String query = "SELECT video_id, rating_sum, rating_count FROM video_ratings_summary LIMIT 5";
        return this.session.execute(query);
    }

    // 11. Lista com as Tags existentes e o número de vídeos catalogados com cada uma delas
    public ResultSet query11() {
        String query = "SELECT tag, video_id FROM videos_by_tag";
        return this.session.execute(query);
    }
}
