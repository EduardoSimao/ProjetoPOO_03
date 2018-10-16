/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.web;

import java.util.ArrayList;

/**
 *
 * @author Carlos
 */
public class ArrayVeiculo {
   private static ArrayList<Veiculo> veiculos;
    public static ArrayList<Veiculo> getVeiculos(){
      if(veiculos == null){
         veiculos = new ArrayList<>();
         Veiculo v1 = new Veiculo();
         v1.setDados("HRE-3467","Volvo","XC40","Branco");
         veiculos.add(v1);
         Veiculo v2 = new Veiculo();
         v2.setDados("YTG-1315","Volkswagen","Golf","Preto"); 
         veiculos.add(v2);
         Veiculo v3 = new Veiculo();
         v3.setDados("FTT-8988","Hyundai","HB20","Vermelho"); 
         veiculos.add(v3);
         Veiculo v4 = new Veiculo();
         v4.setDados("JGD-9087","Nissan","Kicks","Cinza"); 
         veiculos.add(v4);
      } 
      return veiculos;
    }
}
