/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import clases.Cliente;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author sergio
 */
public class DAOCliente {
    
     Conexion con = new Conexion();

    public DAOCliente() {
        con = new Conexion();
    }
    
    public ArrayList<Cliente> listarCliente() {
        Cliente clie = null;
        String q = "SELECT id_cliente,nombre,apellido,telefono_celular,telefono_fijo FROM cliente order by nombre, apellido";
        ArrayList listaCliente = new ArrayList();
        try {
            Connection acceso = con.getConnection();
            PreparedStatement ps = acceso.prepareStatement(q);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                clie = new Cliente();

                clie.setId_cliente(rs.getInt(1));
                clie.setNombre(rs.getString(2));
                clie.setApellido(rs.getString(3));
                clie.setCelular(rs.getString(4));
                clie.setFijo(rs.getString(5));

                listaCliente.add(clie);
            }
            acceso.close();
        } catch (SQLException e) {
            System.out.println("Error buscar: " + e.getMessage());
        }
        return listaCliente;
    }
    
}
