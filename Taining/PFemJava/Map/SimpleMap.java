package Taining.PFemJava.Map;

import java.util.List;
import java.util.stream.Collector;
import java.util.stream.Collectors;

public class SimpleMap {
    public record Pessoa(String name, int idade) {
    }

    public static void main(String[] args) {
        List<Pessoa> list = List.of(
                new Pessoa("Felisberto", 17),
                new Pessoa("Alberto", 23),
                new Pessoa("Kelenhe", 15),
                new Pessoa("Mukinda", 3),
                new Pessoa("Norberto", 60));

        List<String> apenasNomes = list.stream()
                .map(Pessoa::name)
                .collect(Collectors.toList());

        // ou tambem
        List<Integer> apenasIdade = list.stream()
                .map((Pessoa x) -> x.idade)
                .toList();

        apenasNomes.forEach(System.out::println);
        System.out.println("\n Apenas Idade \n ");
        apenasIdade.forEach(System.out::println);

    }
}
