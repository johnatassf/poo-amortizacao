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
public class AmortizacaoConstante {

    private int quantidadeDeMeses;
    private double valorTotal;
    private double juros;
    private double ultimoJurosCalculado;
    private double prestacoes;
    private double amortizacao;
    private double valorTotaldosJuros;
    private double valorTotalDaAmortizacao;
    private double valorTotalDasPrestacoes;

    public AmortizacaoConstante(int quantidadeDeMeses, double valorTotal, double juros) {
        this.quantidadeDeMeses = quantidadeDeMeses;
        this.valorTotal = valorTotal;
        this.juros = juros;
        this.setAmortizacao();
    }

    private void setAmortizacao() {
        this.amortizacao = this.valorTotal / this.quantidadeDeMeses;
    }

    public double calcularJurosAtual() {
        this.ultimoJurosCalculado = this.valorTotal * this.juros;
        this.setValorTotalDosJuros(ultimoJurosCalculado);
        return this.ultimoJurosCalculado;
    }

    public double calcularPrestacaoAtual() {
        double valorPrestacaoAtual = this.amortizacao + this.ultimoJurosCalculado;
        this.setValorTotalDasPrestacoes(valorPrestacaoAtual);
        this.valorTotalDaAmortizacao += this.amortizacao;
        
        AjustarValorTotal();
    return valorPrestacaoAtual;
    }

   

    public double getAmortizacao() {
        return amortizacao;
    }

    public double getValorTotal() {
        return valorTotal;
    }
    
     private void AjustarValorTotal() {
        if (this.valorTotal != 0) {
            this.valorTotal -= this.amortizacao;
        }
    }
    
    
    private void setValorTotalDosJuros(double ultimoJurosCAlculado){
        this.valorTotaldosJuros += ultimoJurosCAlculado;
    }

    public double getValorTotalDosJuros() {
        return valorTotaldosJuros;
    }

    public void setValorTotalDaAmortizacao(double valorTotalDaAmortizacao) {
        this.valorTotalDaAmortizacao = valorTotalDaAmortizacao;
    }

    public double getValorTotalDaAmortizacao() {
        return valorTotalDaAmortizacao;
    }
    

    public void setValorTotalDasPrestacoes(double prestacaoAtual) {
        this.valorTotalDasPrestacoes += prestacaoAtual;
    }

    public double getValorTotalDasPrestacoes() {
        return valorTotalDasPrestacoes;
    }

    public void setValorTotaldosJuros(double valorJurosAtual) {
        this.valorTotaldosJuros += valorJurosAtual;
    }

    public double getUltimoJurosCalculado() {
        return ultimoJurosCalculado;
    }
    
    
    
    

}
