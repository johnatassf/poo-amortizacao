/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatec.model;

/**
 *
 * @author T2S.JOHNATAS
 */
public class AmortizacaoAmericana {

    private int numeroDePrestacoes;
    private double valorDasPrestacoes;
    private double juros;
    private double jurosCalculado;
    private double divida;
    
    double[][] matrizDeCalculo = new double[12][4];

    public AmortizacaoAmericana(int numerDePrestacoes, double juros, double divida) {
        this.numeroDePrestacoes = numerDePrestacoes;
        this.juros = juros/100;
        this.jurosCalculado = divida * this.juros;
        this.divida = divida;
        
    }

    public double[][] CalcularJuros() {
        
        for (int x = 1; x < this.numeroDePrestacoes; x++) {
            this.matrizDeCalculo[0][0] = x;
            this.matrizDeCalculo[x][2] = jurosCalculado;
            this.matrizDeCalculo[x][3] = divida;
        }
        this.matrizDeCalculo[this.numeroDePrestacoes  - 1][0] = this.numeroDePrestacoes;
        this.matrizDeCalculo[this.numeroDePrestacoes  - 1][1] = this.divida;
        this.matrizDeCalculo[this.numeroDePrestacoes  - 1][2] = this.jurosCalculado;
        this.matrizDeCalculo[this.numeroDePrestacoes  - 1][3] = 0;
    
        return this.matrizDeCalculo;
    }

}
