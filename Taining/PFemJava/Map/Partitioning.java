package Taining.PFemJava.Map;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

public class Partitioning {
    public record Pessoa(String name, int idade) {
    }

    public static void main(String[] args) {
        List<Pessoa> list = List.of(
                new Pessoa("Felisberto", 17),
                new Pessoa("Alberto", 23),
                new Pessoa("Kelenhe", 15),
                new Pessoa("Mukinda", 3),
                new Pessoa("Norberto", 60));
        Map<Boolean, List<Pessoa>> greatherAgeMap = list.stream().collect(Collectors.partitioningBy(x -> x.idade > 18));
        greatherAgeMap.get(true).forEach(x -> System.out.println(x));
    }
}