package pt.ua.claudino;

import java.util.List;
import java.util.Map;

public class dmain {
    public static void main(String[] args) {
        RestaurantService service = new RestaurantService();

        // 1
        int numLocalidades = service.countLocalidades();
        System.out.println("Numero de localidades distintas: " + numLocalidades);

        // 2
        Map<String, Integer> map = service.countRestByLocalidade();
        System.out.println("\nNumero de restaurantes por localidade:");
        for (Map.Entry<String, Integer> entry : map.entrySet()) {
            System.out.println("-> " + entry.getKey() + " - " + entry.getValue());
        }

        // 3
        List<String> rests = service.getRestWithNameCloserTo("Park");
        System.out.println("\nNome de restaurantes contendo 'Park' no nome:");
        for (String nome : rests) {
            System.out.println("-> " + nome);
        }
    }
}