package org.example;

public class Main {

    private static double x = 0.0;

    public static void main(String[] args) {

        double result = suma(2, 3);
        double result2 = suma(2.5, 3.5);

        System.out.println(result2  + " " + result);
        System.out.println(x);
    }

    private static double suma(double v, double v1) {
        double sumador=Math.random();
        x=multi(v,v1);
        System.out.println(sumador);
        return v + v1;
    }

    private static int multi(double v, double v1) {
        return (int) (v * v1);
    }
}