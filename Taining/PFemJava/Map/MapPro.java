package Taining.PFemJava.Map;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

public class MapPro {
    public record Pessoa(String name, int idade) {
    }

    public static void main(String[] args) {
        List<Pessoa> list = List.of(
                new Pessoa("Felisberto", 17),
                new Pessoa("Alberto", 23),
                new Pessoa("Kelenhe", 15),
                new Pessoa("Mukinda", 3),
                new Pessoa("Norberto", 60));

        Map<String, Pessoa> mapPessoa = list.stream().collect(Collectors.toMap(Pessoa::name, (Pessoa x) -> x));

        System.out.println("==========================");
        System.out.println("======== Testando  =========");

        mapPessoa.keySet().forEach(x -> System.out.println(mapPessoa.get(x)));

        Map<String, Integer> mapNomeIdade = list.stream()
                .collect(Collectors.toMap(Pessoa::name, Pessoa::idade, Math::max));
        System.out.println("====== Testando Map (Nome e Idade) ======");
        mapNomeIdade.keySet().forEach(x -> System.out.println(mapNomeIdade.get(x)));

    }
}
