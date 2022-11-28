package org.example;

import java.util.function.Function;

public class FunctionalProgramming01 {
    private Function<String, String> toMayus = s -> s.toUpperCase();
    private Function<Integer, Integer> num = x -> x.sum(x, x);


    public static void main(String[] args) {

        FunctionalProgramming01 functionalProgramming01 = new FunctionalProgramming01();
        System.out.println(functionalProgramming01.toMayus.apply("hola"));
        System.out.println(functionalProgramming01.num.apply(2));
    }

    public void pruebas(){
        toMayus.apply("hola");
        num.apply(2);
    }

    public static String toMayus(String s){
        return s.toUpperCase();
    }

    public static int num(int x){
        return x+x;
    }
}
