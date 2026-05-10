package Taining.PFemJava.Map;

import java.util.List;
import java.util.Map;
import java.util.function.Function;
import java.util.stream.Collectors;

import Taining.PFemJava.Collectors.Loja.Pessoa;

public class GroupingBy {
    public record Funcionario(String name, int idade, String departamento) {
    }

    public static void main(String[] args) {
        List<Funcionario> list = List.of(
                new Funcionario("Felisberto", 17, "RH"),
                new Funcionario("Alberto", 23, "TI"),
                new Funcionario("Kelenhe", 15, "Cozinha"),
                new Funcionario("Mukinda", 3, "TI"),
                new Funcionario("Norberto", 60, "RH"));
        Map<String, List<Funcionario>> mapByDepartamento = list.stream()
                .collect(Collectors.groupingBy(Funcionario::departamento));

        mapByDepartamento.get("RH").forEach(x -> System.out.println(x));

        Map<String, Integer> mapByDepartamento2 = list.stream()
                .collect(Collectors.toMap(Funcionario::name, Funcionario::idade));

        mapByDepartamento2.keySet().forEach(x -> System.out.println(mapByDepartamento2.get(x)));
    }
}
