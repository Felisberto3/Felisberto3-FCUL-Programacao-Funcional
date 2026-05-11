package Taining.PFemJava;

import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Function;
import java.util.stream.Collectors;

public class Teste {
    static <T> T list(Function<T, T> f, Function<T, T> g, T v) {
        return f.compose(g).apply(v);
    }

    public record Aluno(double id, String name) {
    }

    public static void main(String[] args) {
        Integer v = 5;
        Function<Integer, Integer> f = x -> 2 * x;
        Function<Integer, Integer> g = x -> x + 1;

        List<Aluno> alunos = List.of(
                new Aluno(3, "Felisberto"),
                new Aluno(31, "Vicente"),
                new Aluno(23, "Luis"));

        Set<Aluno> alunosMap = alunos.stream()
                .collect(Collectors.toSet());
        System.out.println("total " + alunosMap);

        System.out.println("Este é o valor: " + Teste.list(f, g, v));
    }
}
