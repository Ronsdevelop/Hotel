
package dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;

public class NivelDAO {
    public static boolean registrar(model.Niveles n) {
        try {
            CallableStatement cs = null;
            Connection con = Conexion.conectar();
            CallableStatement sp = con.prepareCall("{call sping_categoria(?,?)}");
            sp.setString(1, n.getCod_nivel());
            sp.setString(2, n.getNom_nivel());
            if (sp.executeUpdate() > 0) {
                return true;
            } else {
                return false;
            }
        } catch (SQLException ex) {
            return false;
        }
    }
}
