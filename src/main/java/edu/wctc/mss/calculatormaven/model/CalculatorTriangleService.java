/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.wctc.mss.calculatormaven.model;

import static java.lang.Math.sqrt;

/**
 *
 * @author Spike
 */
public class CalculatorTriangleService {
    public double findHypotenuseOfTriangle(double a, double b) {
        return sqrt((a * a)+ (b * b));
    }
}
