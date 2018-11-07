/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;
import java.sql.CallableStatement;
import java.sql.Connection;
import model.Cliente;
/**
 *
 * @author Rony
 */
public class ClienteDAO {
    public static boolean RegistrarCliente(Cliente C ) {
        try {
            CallableStatement cs = null;
            Connection con = Conexion.conectar();
            CallableStatement sp = con.prepareCall("{call sp_ingresaclientes(?,?,?,?,?,?,?,?,?)}");
            sp.setString(1, C.getNombres());
            sp.setString(2, C.getAppaterno());
            sp.setString(3, C.getApmaterno());
            sp.setString(4, C.getDireccion());            
            sp.setInt(5, (int) C.getFono());
            sp.setString(6, C.getEmail());
            sp.setInt(7, (int)C.getDni());
            sp.setString(7, C.getEstado());
            if (sp.executeUpdate()>0) {
                return true;
            }else{
                return false;
            }
        
            
        } catch (Exception e) {
            return false;
        }
    
}
    
}
