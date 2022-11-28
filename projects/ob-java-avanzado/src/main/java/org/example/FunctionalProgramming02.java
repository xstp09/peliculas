package org.example;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.OptionalInt;
import java.util.stream.IntStream;
import java.util.stream.Stream;

public class FunctionalProgramming02 {
    public static void main(String[] args) {
        ArrayList<String> lista = new ArrayList<>();
        lista.add("hola");
        lista.add("buenos días");
        lista.add("adios");

//        lista.forEach(System.out::println);

        //map: por cada resultado de la lista, se aplica una función
        Stream<String> stream = lista.stream()
                .map(String::toUpperCase)
                .filter(s -> s.contains("S"));

        //Una vez utilizado un foreach, ya no se puede reutilizar dicha función
        stream.forEach(System.out::println);

        int[] array = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
        IntStream stNum = Arrays.stream(array);
        OptionalInt stNum2 = stNum.map(operand -> operand * 2)
                .filter(operand -> operand % 2 == 0)
                .reduce((left, right) -> {
                    System.out.println("left: " + left + " right: " + right);
                    return left + right;
                });

       stNum2.ifPresent(System.out::println);




        //stream.forEach(System.out::println);
    }
}

//        System.out.println(stream);

//        for (String s : lista) {
//            System.out.println(s);
//        }



