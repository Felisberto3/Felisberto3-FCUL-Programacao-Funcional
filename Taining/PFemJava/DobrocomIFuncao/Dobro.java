package Taining.PFemJava.DobrocomIFuncao;

public class Dobro implements Funcao<Integer, Integer> {

    @Override
    public Integer aplicar(Integer i) {
        return i * 2;
    }

    static <A> A aplicar2vezes(Funcao<A, A> f, A x) {
        return f.aplicar(f.aplicar(x));
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
    }
}
