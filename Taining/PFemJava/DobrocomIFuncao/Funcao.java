package Taining.PFemJava.DobrocomIFuncao;

@FunctionalInterface
public interface Funcao<T, R> {
    R aplicar(T i);
}
