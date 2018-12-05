package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import modelo.CoordinadorBean;

/**
 *
 * @author Alex
 */
public class CoordinadorDao {
   
    Conexion conn;
    
    public CoordinadorDao(Conexion conn) {
        this.conn = conn;
    }
    
    public CoordinadorDao() {
    }
    
    public boolean insertar(CoordinadorBean corb) {
        String sql = "INSERT INTO tbl_coordinadorcarrera VALUES(?,?,?)";
        try {
            PreparedStatement ps = conn.conectar().prepareStatement(sql);
            ps.setString(1, corb.getId_coordinador());
            ps.setString(2, corb.getId_persona());
            ps.setString(3, corb.getId_carrera());
            ps.executeUpdate();
            return true;
            
        } catch (Exception e) {
            return false;
            
        }
        
    }
    
    public List<CoordinadorBean> consultar() {
        String sql = "SELECT * FROM tbl_coordinadorcarrera";
        
        try {
            PreparedStatement ps = conn.conectar().prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            CoordinadorBean corb;
            List<CoordinadorBean> lista = new LinkedList<>();
            while (rs.next()) {
                corb = new CoordinadorBean(rs.getString("id_coordinador"));
                corb.setId_persona(rs.getString("id_persona"));
                corb.setId_carrera(rs.getString("id_carrera"));
                lista.add(corb);
            }
            return lista;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
        
    }
    
    public boolean actualizar(CoordinadorBean corb) {
        String sql = "UPDATE tbl_coordinadorcarrera SET id_persona =?, id_carrera=?  WHERE id_coordinador=?";
        try {
            PreparedStatement ps = conn.conectar().prepareStatement(sql);
            
            ps.setString(1, corb.getId_persona());
            ps.setString(2, corb.getId_carrera());
            ps.setString(3, corb.getId_coordinador());
            ps.executeUpdate();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
    
    public boolean eliminar(String id_coordinador) throws Exception {
        String sql = "DELETE FROM tbl_coordinadorcarrera WHERE id_coordinador=?";
        try {
            PreparedStatement ps = conn.conectar().prepareStatement(sql);
            ps.setString(1, id_coordinador);
            ps.executeUpdate();
            return true;
            
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
    
    public List<CoordinadorBean> consultarById(String id_coordinador) {
        String sql = "SELECT * FROM tbl_coordinadorcarrera WHERE id_coordinador =?";
        try {
            PreparedStatement ps = conn.conectar().prepareStatement(sql);
            ps.setString(1, id_coordinador);
            ResultSet rs = ps.executeQuery();
            List<CoordinadorBean> listar = new ArrayList<>();
            CoordinadorBean corb;
            while (rs.next()) {
                corb = new CoordinadorBean(rs.getString("id_coordinador"));
                corb.setId_persona(rs.getString("id_persona"));
                corb.setId_carrera(rs.getString("id_carrera"));
                listar.add(corb);
            }
            return listar;
            
        } catch (Exception e) {
            return null;
        }
        
    }
    
}
