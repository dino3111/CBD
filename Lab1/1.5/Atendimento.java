package ex15;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

public class Atendimento {
    private static final int MAX_PRODUCTS = 30;
    private static final int TIME_SLOT = 60*60;

    private JedisPool pool;

    public Atendimento() { pool = new JedisPool (); }

    public void limparBD() {
        try (Jedis jedis = pool.getResource()) { jedis.flushAll(); }
    }

    public boolean reqProduct(String username, String product){
        try (Jedis jedis = pool.getResource()){
            String key = "Atendimento:" + username;

            boolean isNewProduct = !jedis.sismember(key, product);
            long currentCount = jedis.scard(key);

            if (isNewProduct && currentCount >= MAX_PRODUCTS) {
                System.out.println("Erro: " + username + " excedeu o número máximo de " + MAX_PRODUCTS + " produtos por tempo.");
                return false;
            }

            long added = jedis.sadd(key, product);

            if (added == 1 && jedis.scard(key) == 1){
                jedis.expire(key, TIME_SLOT);
            }

            if (added == 0){
                System.out.println("O produto " + product + " já foi pedido por " + username + " neste espaço de tempo.");
            } else {
                System.out.println(product + " foi registado por " + username + ".");
            }
            return true;

        }
    }

    public static void main(String[] args){
        Atendimento atendimento = new Atendimento();

        atendimento.limparBD();

        for (int i = 1; i <= 30; i++){
            atendimento.reqProduct("Claudino", "iPhone" + i); // enche o limite
        }

        atendimento.reqProduct("Claudino", "MacBook"); // excede o max_products

        // teste de outros utilizadores pq têm chaves diferentes
        atendimento.reqProduct("Dino", "Cadeira");
        atendimento.reqProduct("Maria", "Cadeira");
    }

}
