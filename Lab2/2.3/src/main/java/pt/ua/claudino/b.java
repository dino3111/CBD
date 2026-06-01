package pt.ua.claudino;

import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoClients;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import org.bson.Document;
import static com.mongodb.client.model.Indexes.*;

public class b {

    public static void main(String[] args) {

        MongoClient mongoClient = MongoClients.create("mongodb://localhost:27017");
        MongoDatabase db = mongoClient.getDatabase("cbd");
        MongoCollection<Document> collection = db.getCollection("restaurants");

        // localidade
        collection.createIndex(ascending("localidade"));

        // gastronomia
        collection.createIndex(ascending("gastronomia"));

        // texto para nome
        collection.createIndex(text("nome"));

        mongoClient.close();
    }
}
