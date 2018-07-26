/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clases;

/**
 *
 * @author sergio
 */
public class Usuario {
    private int id;
    private String user,pass;
    private int id_tipo_usuario;

    public Usuario() {
    }

    public Usuario(int id, String user, String pass, int id_tipo_usuario) {
        this.id = id;
        this.user = user;
        this.pass = pass;
        this.id_tipo_usuario = id_tipo_usuario;
    }

    public Usuario(String user, String pass) {
        this.user = user;
        this.pass = pass;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public int getId_tipo_usuario() {
        return id_tipo_usuario;
    }

    public void setId_tipo_usuario(int id_tipo_usuario) {
        this.id_tipo_usuario = id_tipo_usuario;
    }

    @Override
    public String toString() {
        return "Usuario{" + "id=" + id + ", user=" + user + ", pass=" + pass + ", id_tipo_usuario=" + id_tipo_usuario + '}';
    }
            
}
