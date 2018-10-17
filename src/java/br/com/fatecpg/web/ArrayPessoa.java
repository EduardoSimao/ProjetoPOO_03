/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.web;

import java.util.ArrayList;

/**
 *
 * @author Positivo
 */
public class ArrayPessoa {
    private static ArrayList<Pessoa> pessoas;
    public static ArrayList<Pessoa> getPessoas(){
      if(pessoas == null){
         pessoas = new ArrayList<>();
         Pessoa pessoa1 = new Pessoa();
         pessoa1.setDados("Danilo","1234567898","Danilo@gmail.com","35667788");
         pessoas.add(pessoa1);
      } 
      return pessoas;
    }
}
