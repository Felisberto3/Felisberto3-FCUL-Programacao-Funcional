package Taining.PFemJava.DobrocomIFuncao;

@FunctionalInterface
public interface Predicado<T> {
    boolean test(T x);
}