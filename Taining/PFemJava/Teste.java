package Taining.PFemJava;

import java.util.function.Function;

public class Teste {
    static <T> T list(Function<T, T> f, Function<T, T> g, T v) {
        return f.compose(g).apply(v);
    }

    public static void main(String[] args) {
        Integer v = 5;
        Function<Integer, Integer> f = x -> 2 * x;
        Function<Integer, Integer> g = x -> x + 1;

        System.out.println("Este é o valor: " + Teste.list(f, g, v));
    }
}
