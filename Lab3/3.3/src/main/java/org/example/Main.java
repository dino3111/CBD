package org.example;

import com.datastax.oss.driver.api.core.CqlSession;
import com.datastax.oss.driver.api.core.cql.ResultSet;
import java.util.HashMap;
import java.util.Map;

public class Main {
    public static void main(String[] args) {
        try (CqlSession session = CqlSession.builder().withKeyspace("ex32").build()) {
            Queries q = new Queries(session);

            // a)
            q.inserirUtilizador("user11", "Claudino Martins", "claudino@email.com");
            System.out.println("Inserido: user11");

            q.atualizarUtilizador("user11", "Claudino José Martins", "claudino.martins@email.com");
            System.out.println("Editado: user11");

            ResultSet user = q.getUtilizador("user11");
            user.forEach(row -> System.out.println("User encontrado: " + row.getString("name") + " <" + row.getString("email") + ">"));

            q.eliminarUtilizador("user11");
            System.out.println("Eliminado: user11");

            // b)
            // 1. Os últimos 3 comentários para o vídeo 1
            System.out.println("\n1. Últimos 3 comentários do vídeo 1:");
            q.query1(1).forEach(row -> 
                System.out.println("- " + row.getString("owner_username") + ": " + row.getString("description") + " (" + row.getInstant("shared_date") + ")"));

            // 6. Últimos 10 vídeos
            System.out.println("\n6. Últimos 10 vídeos:");
            q.query6().forEach(row -> 
                System.out.println("- " + row.getString("name") + " [" + row.getInstant("share_date") + "]"));

            // 9. Top 5 vídeos por rating summary
            System.out.println("\n9. Vídeos e seus ratings (Summary):");
            q.query9().forEach(row -> 
                System.out.println("- Video ID: " + row.getInt("video_id") + " (Sum: " + row.getInt("rating_sum") + ", Count: " + row.getInt("rating_count") + ")"));

            // 11. Tags e contagem (Processado em Java)
            System.out.println("\n11. Tags e número de vídeos:");
            Map<String, Integer> tagCounts = new HashMap<>();
            q.query11().forEach(row -> {
                String tag = row.getString("tag");
                tagCounts.put(tag, tagCounts.getOrDefault(tag, 0) + 1);
            });
            tagCounts.forEach((tag, count) -> System.out.println("- Tag: " + tag + " (Count: " + count + ")"));

        }
    }
}
