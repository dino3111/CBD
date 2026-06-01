package pt.ua.claudino;

import com.mongodb.client.*;
import org.bson.Document;
import java.util.Date;
import static com.mongodb.client.model.Filters.*;

public class Atendimento {

    static int LIMIT = 30;
    static int TIMESLOT = 60;

    public static void request(MongoCollection<Document> pedidos, String username, String product) {

        Date now = new Date();
        long startTime = now.getTime() - TIMESLOT * 60 * 1000;

        long count = pedidos.countDocuments(and(
                eq("username", username),
                gte("timestamp", new Date(startTime))
        ));

        if (count >= LIMIT) {
            System.out.println("ERRO: " + username + " excedeu o limite.");
            return;
        }

        Document pedido = new Document("username", username)
                .append("product", product)
                .append("timestamp", now);

        pedidos.insertOne(pedido);

        System.out.println(username + " pediu " + product);
    }

    public static void main(String[] args) {


        MongoClient client = MongoClients.create("mongodb://localhost:27017");
        MongoDatabase db = client.getDatabase("cbd");
        MongoCollection<Document> pedidos = db.getCollection("pedidos");

        pedidos.deleteMany(new Document());

        for (int i = 0; i < 31; i++) {
            request(pedidos, "Dino", "iPhone");
        }

        client.close();
    }
}