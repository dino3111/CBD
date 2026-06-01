package ex14;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.resps.Tuple;
import java.io.*;
import java.util.*;

public class Popularity {

    public static String names = "/home/claudino/Desktop/Lab01_127368/src/main/java/ex14/nomes-pt-2021.csv";
    public static String NAMES_KEY = "names";

    public static void main(String[] args) throws IOException {

        try (Jedis jedis = new Jedis();
             Scanner sc = new Scanner(System.in)) {

            jedis.flushDB();

            try (BufferedReader br = new BufferedReader(new FileReader(names))) {
                String line;
                while ((line = br.readLine()) != null) {
                    String[] parts = line.split(";");
                    if (parts.length == 2) {
                        String nome = parts[0].toLowerCase().trim();
                        double popularidade = Double.parseDouble(parts[1]);
                        jedis.zadd(NAMES_KEY, popularidade, nome);
                    }
                }
            }

            while (true) {
                System.out.println("Search for ('Enter' for quit): ");
                String prefix = sc.nextLine().toLowerCase().trim();

                if (prefix.isEmpty()) break;

                List<Tuple> resultados = jedis.zrevrangeWithScores(NAMES_KEY, 0, -1);

                for (Tuple t : resultados) {
                    String nome = t.getElement();
                    if (nome.startsWith(prefix)) {
                        System.out.println(nome + " (" + (int) t.getScore() + ")");
                    }
                }
            }
        }
    }
}