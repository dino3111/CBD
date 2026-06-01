package pt.ua.claudino;

import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoClients;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import org.bson.Document;
import static com.mongodb.client.model.Filters.eq;
import static com.mongodb.client.model.Updates.set;

public class a {

    public static void main(String[] args) {

        MongoClient mongoClient = MongoClients.create("mongodb://localhost:27017");
        MongoDatabase db = mongoClient.getDatabase("cbd");
        MongoCollection<Document> collection = db.getCollection("restaurants");

        // insert
        Document rest = new Document("nome", "Restaurante")
                .append("localidade", "Coimbra")
                .append("gastronomia", "Portuguese");

        collection.insertOne(rest);
        System.out.println("Restaurante inserido.");

        // find
        Document result = collection.find(eq("nome", "Restaurante")).first();
        System.out.println("Encontrado: " + result);

        // update
        collection.updateOne(eq("nome", "Restaurante "),
                set("gastronomia", "Italian"));
        System.out.println("Gastronomia atualizada.");

        // verificar atualização
        Document updated = collection.find(eq("nome", "Restaurante")).first();
        System.out.println("Depois do update: " + updated);

        mongoClient.close();
    }
}