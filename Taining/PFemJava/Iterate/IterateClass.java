package Taining.PFemJava.Iterate;

import java.util.Collection;
import java.util.List;
import java.util.function.UnaryOperator;
import java.util.stream.Collector;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class IterateClass {
    public static void main(String[] args) {
        List<String> list = List.of("1", "2", "32", "23");

        List<Integer> listInteger = list.stream()
                .map(Integer::valueOf)
                .collect(Collectors.toList());

        listInteger.forEach(x -> {
            System.out.print(x + " ");
        });
        System.out.println();
        System.out.println(" ===== So numeros pares =======");

        listInteger.forEach(x -> {
            if (x % 2 == 0)
                System.out.print(x + " ");
        });
        System.out.println();

        System.out.println("======== Outro Nivel ======== ");
        UnaryOperator<Double> f = n -> n + 1.0;
        Double soma = Stream.iterate(0d, f)
                .filter(x -> x % 2 == 1)
                .map(x -> Math.pow(x, 2))
                .limit(10)
                .reduce(0.0, (x, y) -> x + y);

        System.out.println(soma);
    }

}
