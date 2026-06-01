package ex15;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

public class AtendimentoB {
    private static final int MAX_PRODUCTS = 30;
    private static final int TIME_SLOT = 60*60;

    private JedisPool pool;

    public AtendimentoB() {
        pool = new JedisPool ();
    }

    public void limparBD() {
        try (Jedis jedis = pool.getResource()) { jedis.flushAll(); }
    }

    public boolean reqProduct(String username, String product, int quantity) {
        try (Jedis jedis = pool.getResource()) {
            String key = "Atendimento:" + username;

            java.util.Map<String, String> produtos = jedis.hgetAll(key);
            int total = 0;
            for (String val : produtos.values()) {
                total += Integer.parseInt(val);
            }   

            if (total + quantity > MAX_PRODUCTS) {
                System.out.println("Erro: " + username + " tentou pedir " + quantity + " unidades de " + product + ", mas o limite é " + MAX_PRODUCTS + ".");
                return false;
            }

            long novoProdutoTotal = jedis.hincrBy(key, product, quantity);
            
            jedis.expire(key, TIME_SLOT);

            System.out.println(username + " pediu " + quantity + " unidades de " + product + ". Total deste produto: " + novoProdutoTotal + ". Total geral: " + (total + quantity));
            return true;
        }
    }

    public static void main(String[] args) {
        AtendimentoB atendimento = new AtendimentoB();

        atendimento.limparBD();

        atendimento.reqProduct("Claudino", "iPhone", 10); // pedir 10 iphones
        atendimento.reqProduct("Claudino", "MacBook", 15); // pedir 25 macbooks
        atendimento.reqProduct("Claudino", "iPad", 10); // pedir 10 ipads -> passa o limite
        atendimento.reqProduct("Claudino", "Apple Watch", 5); // 5 fica o limite exato 30/30
        atendimento.reqProduct("Dino", "Monitor", 20); // outro utilizador

    }
}
