package pt.ua.claudino;

import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoClients;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;

import com.mongodb.client.model.Filters;
import org.bson.Document;
import org.bson.conversions.Bson;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class RestaurantService {

    private final MongoCollection<Document> collection;

    public RestaurantService() {
        MongoClient mongoClient = MongoClients.create("mongodb://localhost:27017");
        MongoDatabase db = mongoClient.getDatabase("cbd");
        this.collection = db.getCollection("restaurants");
    }

    public int countLocalidades() {
        List<String> localidadeList = collection.distinct("localidade", String.class).into(new ArrayList<>());
        return localidadeList.size();
    }

    public Map<String, Integer> countRestByLocalidade() {
        Map<String, Integer> result = new LinkedHashMap<>();

        List<Document> docs = collection.aggregate(List.of(
                new Document("$group",
                        new Document("_id", "$localidade")
                                .append("count", new Document("$sum", 1))),
                new Document("$sort", new Document("count", -1))
        )).into(new ArrayList<>());

        for (Document doc : docs) {
            String localidade = doc.getString("_id");
            Integer count = doc.getInteger("count");
            result.put(localidade, count);
        }

        return result;
    }

    public List<String> getRestWithNameCloserTo(String name) {
        List<String> result = new ArrayList<>();

        Bson filter = Filters.text(name);

        for (Document doc : collection.find(filter)) {
            result.add(doc.getString("nome"));
        }

        return result;
    }
}
