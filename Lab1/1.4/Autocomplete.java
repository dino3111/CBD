package ex14;

import redis.clients.jedis.Jedis;
import java.io.*;
import java.util.Scanner;

public class Autocomplete {
    public static String names = "/home/claudino/Desktop/Lab01_127368/src/main/java/ex14/names.txt";
    public static String NAMES_KEY = "names";

    public static void main( String[] args ) throws IOException {
        Jedis jedis = new Jedis();
        Scanner sc = new Scanner(System.in);

        jedis.flushAll();

        BufferedReader br = new BufferedReader(new FileReader(names));
        String line = "";

        while(true){
            if (line != null){
                jedis.zadd(NAMES_KEY, 0, line);
            }
            else{
                break;
            }
            line = br.readLine();
        }
        br.close();


        while(true){
            System.out.print("Search for ('Enter' for quit): ");
            String prefix = sc.nextLine();

            if (prefix.equals("")){
                break;
            }

            jedis.zrangeByLex(NAMES_KEY, "[" + prefix, "[" + prefix + "\uFFFF").forEach(System.out::println);
        }

        jedis.close();
        sc.close();
    }
}