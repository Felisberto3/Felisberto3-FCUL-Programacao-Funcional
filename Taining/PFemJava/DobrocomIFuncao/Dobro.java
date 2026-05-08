package Taining.PFemJava.DobrocomIFuncao;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

public class Dobro implements Funcao<Integer, Integer> {

    @Override
    public Integer aplicar(Integer i) {
        return i * 2;
    }

    static <A> A aplicar2vezes(Funcao<A, A> f, A x) {
        return f.aplicar(f.aplicar(x));
    }

    static <A> Collection<A> filtrar(Predicado<A> f, Collection<A> list) {
        ArrayList<A> copy = new ArrayList<>();

        for (A item : list) {
            if (f.test(item)) {
                copy.add(item);
            }
        }

        return copy;
    }

    public static void main(String[] args) {
        Funcao<Integer, Integer> f = x -> 2 * x;
        Integer result = Dobro.aplicar2vezes(f, 2);
        System.out.println(result);
        System.out.println("Criar outra: " + aplicar2vezes(new Dobro(), 3));

        Funcao<Integer, Integer> s = new Funcao<Integer, Integer>() {
            @Override
            public Integer aplicar(Integer i) {
                return 2 * i;
            }

        };

        System.out.println("Outra " + aplicar2vezes(s, 4));

        Predicado<Integer> g = x -> x % 2 == 0;
        Collection<Integer> list = Arrays.asList(1, 2, 4, 6, 7);
        Collection<Integer> novaList = filtrar(g, list);

        System.out.println("======= Nova Lista ======");
        for (Integer integer : novaList) {
            System.out.print(integer + " ");
        }
        System.out.println();
    }
}
