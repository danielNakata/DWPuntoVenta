/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dwpuntoventa.dto.out;

/**
 *
 * @author danie_000
 */
public class UsuarioDTO {
    public String login = "";
    public String contrasena = "";
    public String nombre = "";
    public String apellidos = "";
    public int idactivo = 0;
    public String fechareg = "";
    public String ultimologin = "";
    public int idperfil = 0;
    public String perfil = "";

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getContrasena() {
        return contrasena;
    }

    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public int getIdactivo() {
        return idactivo;
    }

    public void setIdactivo(int idactivo) {
        this.idactivo = idactivo;
    }

    public String getFechareg() {
        return fechareg;
    }

    public void setFechareg(String fechareg) {
        this.fechareg = fechareg;
    }

    public String getUltimologin() {
        return ultimologin;
    }

    public void setUltimologin(String ultimologin) {
        this.ultimologin = ultimologin;
    }

    public int getIdperfil() {
        return idperfil;
    }

    public void setIdperfil(int idperfil) {
        this.idperfil = idperfil;
    }

    public String getPerfil() {
        return perfil;
    }

    public void setPerfil(String perfil) {
        this.perfil = perfil;
    }

    @Override
    public String toString() {
        return "UsuarioDTO{" + "login=" + login + ", contrasena=" + contrasena + ", nombre=" + nombre + ", apellidos=" + apellidos + ", idactivo=" + idactivo + ", fechareg=" + fechareg + ", ultimologin=" + ultimologin + ", idperfil=" + idperfil + ", perfil=" + perfil + '}';
    }
    
}
