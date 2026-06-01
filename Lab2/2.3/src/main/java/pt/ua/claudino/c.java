package pt.ua.claudino;

import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoClients;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import org.bson.Document;
import java.util.Date;
import static com.mongodb.client.model.Filters.and;
import static com.mongodb.client.model.Filters.eq;
import static com.mongodb.client.model.Filters.in;
import static com.mongodb.client.model.Filters.lt;
import static com.mongodb.client.model.Projections.excludeId;
import static com.mongodb.client.model.Projections.fields;
import static com.mongodb.client.model.Projections.include;
import static com.mongodb.client.model.Sorts.ascending;
import static com.mongodb.client.model.Sorts.descending;
import static com.mongodb.client.model.Sorts.orderBy;

public class c {

    public static void main(String[] args) {

        MongoClient mongoClient = MongoClients.create("mongodb://localhost:27017");
        MongoDatabase db = mongoClient.getDatabase("cbd");
        MongoCollection<Document> collection = db.getCollection("restaurants");

        // 4. Indique o total de restaurantes localizados no Bronx.
        long totalBronx = collection.countDocuments(eq("localidade", "Bronx"));
        System.out.println(totalBronx);

        // 8. Indique os restaurantes com latitude inferior a -95,7.
        collection.find(lt("address.coord.0", -95.7))
                .projection(fields(include("nome", "localidade", "address.coord"), excludeId()))
                .forEach(doc -> System.out.println(doc.toJson()));

        // 11. Liste o nome, a localidade e a gastronomia dos restaurantes que pertencem ao Bronx e cuja gastronomia é "American" ou "Chinese".
        collection.find(and(
                        eq("localidade", "Bronx"),
                        in("gastronomia", "American", "Chinese")
                ))
                .projection(fields(include("nome", "localidade", "gastronomia"), excludeId()))
                .forEach(doc -> System.out.println(doc.toJson()));

        // 14. Liste o nome e as avaliações dos restaurantes que obtiveram um grade "A", score 10, na data 2014-08-11T00:00:00Z
        Date targetDate = new Date(1407715200000L);
        Document matchingGrade = new Document("grade", "A")
                .append("score", 10)
                .append("date", targetDate);

        collection.find(com.mongodb.client.model.Filters.elemMatch("grades", matchingGrade))
                .projection(fields(include("nome"), com.mongodb.client.model.Projections.elemMatch("grades", matchingGrade), excludeId()))
                .forEach(doc -> System.out.println(doc.toJson()));

        // 17. Liste nome, gastronomia e localidade de todos os restaurantes, ordenando por gastronomia crescente e localidade decrescente.
        collection.find()
                .projection(fields(include("nome", "gastronomia", "localidade"), excludeId()))
                .sort(orderBy(ascending("gastronomia"), descending("localidade")))
                .forEach(doc -> System.out.println(doc.toJson()));

        mongoClient.close();
    }
}
