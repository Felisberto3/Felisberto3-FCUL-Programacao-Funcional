package Taining.PFemJava.Collectors;

import java.util.List;
import java.util.function.Predicate;

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

        ///////
        System.out.println("GErando String");

    }
}
