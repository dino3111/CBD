package pt.ua.claudino;

import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoClients;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoDatabase;
import org.bson.Document;

import java.util.Date;

import static com.mongodb.client.model.Filters.and;
import static com.mongodb.client.model.Filters.eq;
import static com.mongodb.client.model.Filters.gte;

public class AtendimentoB {

    static int LIMIT = 30;
    static int TIMESLOT = 60;

    public static void request(MongoCollection<Document> pedidos, String username, String product, int quantity) {

        Date now = new Date();
        long startTime = now.getTime() - TIMESLOT * 60 * 1000;

        int totalUnits = 0;
        MongoCursor<Document> cursor = pedidos.find(and(
                eq("username", username),
                gte("timestamp", new Date(startTime))
        )).iterator();

        try {
            while (cursor.hasNext()) {
                Document pedido = cursor.next();
                totalUnits += pedido.getInteger("quantity", 0);
            }
        } finally {
            cursor.close();
        }

        if (totalUnits + quantity > LIMIT) {
            System.out.println("ERRO: " + username + " excedeu o limite.");
            return;
        }

        Document pedido = new Document("username", username)
                .append("product", product)
                .append("quantity", quantity)
                .append("timestamp", now);

        pedidos.insertOne(pedido);

        System.out.println(username + " pediu " + quantity + " unidades de " + product);
    }

    public static void main(String[] args) {

        MongoClient client = MongoClients.create("mongodb://localhost:27017");
        MongoDatabase db = client.getDatabase("cbd");
        MongoCollection<Document> pedidos = db.getCollection("pedidos");

        pedidos.deleteMany(new Document());

        request(pedidos, "Dino", "iPhone", 10);
        request(pedidos, "Dino", "AirPods", 12);
        request(pedidos, "Dino", "MacBook", 8);
        request(pedidos, "Dino", "Apple Watch", 1);

        client.close();
    }
}
