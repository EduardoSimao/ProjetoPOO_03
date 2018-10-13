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
public class ArrayEmpresa {
    private static ArrayList<Empresa> empresas;
    
    public static ArrayList<Empresa> getEmpresas(){
        if(empresas == null){
        empresas = new ArrayList<>();
        Empresa empresa1 = new Empresa();
        empresa1.setDados("Jao", "Jao LTDA", "189921853", "12345678", "jao.com.br");
        empresas.add(empresa1);        
        }        
        
        return empresas;
    }
}
