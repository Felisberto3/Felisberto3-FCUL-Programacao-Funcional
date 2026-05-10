package Taining.PFemJava.Collectors;

import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Predicate;
import java.util.stream.Collector;
import java.util.stream.Collectors;

public class Loja {
    public record Pessoa(String name, Integer idade) {
    }

    public static void main(String[] args) {
        List<Pessoa> list = List.of(
                new Pessoa("Felisberto", 23),
                new Pessoa("Kalenhe", 23),
                new Pessoa("Alberto", 32),
                new Pessoa("Mukinda", 45),
                new Pessoa("Condumula", 12));

        Predicate<Pessoa> f = x -> x.idade % 2 == 0;
        Predicate<Pessoa> g = x -> x.idade % 2 == 1;
        boolean todasIdadesPares = list.stream().allMatch(f);
        boolean todasIdadesImpares = list.stream().allMatch(g);

        System.out.println("Todas idades Pares: " + todasIdadesPares);
        System.out.println("Todas idades Impares: " + todasIdadesImpares);

        //
        System.out.println("GErando String");

        List<Pessoa> outraList = list.stream().collect(Collectors.toList());
        Set<Pessoa> maisNovoSet = list.stream().collect(Collectors.toSet()); // Remove os duplicados
        Map<String, Integer> maisNovoMap = list.stream()
                .collect(Collectors.toMap((Pessoa x) -> x.name(), (Pessoa x) -> x.idade));

        // outra forma de fazer isso:
        Map<String, Integer> outroMap = list.stream().collect(Collectors.toMap(Pessoa::name, Pessoa::idade));
        System.out.println("======================================");
        System.out.println("========== Testando os Maps =========");
        System.out.println("======================================");

        outroMap.keySet().forEach(x -> {
            System.out.println(maisNovoMap.get(x));
        });

    }
}
