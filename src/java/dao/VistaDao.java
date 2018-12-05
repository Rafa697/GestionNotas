package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.LinkedList;
import java.util.List;
import modelo.VistaBean;

public class VistaDao {

    Conexion conn;

    public VistaDao(Conexion conn) {
        this.conn = conn;
    }

    public VistaDao() {
    }
    
    public List<VistaBean> consultar(){
    String sql = "SELECT * FROM notas where coleccion = 1";
        try {
            PreparedStatement ps = conn.conectar().prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            VistaBean visb;
            List<VistaBean> lista = new  LinkedList();
            while (rs.next()) {                
                visb = new VistaBean(rs.getInt("coleccion"));
                visb.setPi1(rs.getDouble("pi1"));
                visb.setPi2(rs.getDouble("pi2"));
                visb.setPi3(rs.getDouble("pi3"));
                visb.setP1(rs.getDouble("p1"));
                visb.setP2(rs.getDouble("p2"));
                visb.setP3(rs.getDouble("p3"));
                visb.setNotafinal(rs.getDouble("notafinal"));
                lista.add(visb);
            }return lista;
        } catch (Exception e) {
            return null;
            
        }
    }
    
}
