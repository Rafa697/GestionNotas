        
package dao;
 
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

import modelo.ColeccionBean;


public class ColeccionDao {
    Conexion conn;

    public ColeccionDao(Conexion conn) {
        this.conn = conn;
    }

    public ColeccionDao() {
    }

    
    public boolean insertar(ColeccionBean colb){
    String sql ="INSERT INTO tbl_coleccion VALUES(?,?,?,?)";
    try{
        PreparedStatement ps = conn.conectar().prepareStatement(sql);
        ps.setInt(1, colb.getId_coleccion());
        ps.setString(2, colb.getId_alumno());
        ps.setString(3, colb.getId_materia());
        ps.setString(3, colb.getId_ciclo());
        ps.executeUpdate();
        return true;
    
    }catch(Exception e){
    return false;
    
    }
    
   
    
    }
         public List<ColeccionBean> consultar(){
        String sql ="SELECT * FROM tbl_coleccion";
        try{
            PreparedStatement ps = conn.conectar().prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            ColeccionBean colb;
            List<ColeccionBean> lista = new LinkedList<>();
            while(rs.next()){
                colb = new ColeccionBean(rs.getInt("id_coleccion"));
                colb.setId_alumno(rs.getString("id_alumno"));
                colb.setId_materia(rs.getString("id_materia"));
                colb.setId_ciclo(rs.getString("id_ciclo"));
                
                lista.add(colb);
            }return lista;
        }catch(Exception e){
            e.printStackTrace();
        return null;
        }
        
    
         }
         public boolean actualizar(ColeccionBean colb){
         String sql ="UPDATE tbl_coleccion SET id_alumno =?,id_materia=?,id_ciclo=?  WHERE id_coleccion=?";
         try{
             PreparedStatement ps = conn.conectar().prepareStatement(sql);
             
             ps.setString(1, colb.getId_alumno());
             ps.setString(2, colb.getId_materia());
             ps.setString(3, colb.getId_ciclo());
             ps.setInt(4, colb.getId_coleccion());
             ps.executeUpdate();
             return true;
         }catch(Exception e){
        e.printStackTrace();
         }
        return false;
         }
         public boolean eliminar(int id_coleccion)   throws Exception{
         String sql="DELETE FROM tbl_coleccion WHERE id_coleccion=?";
         try  {
             PreparedStatement ps = conn.conectar().prepareStatement(sql);
             ps.setInt(1, id_coleccion);
             ps.executeUpdate();
             return true;
             
         }catch(SQLException e){
         e.printStackTrace();
         }
        return false;
         }
         public List<ColeccionBean> consultarById(int id_coleccion) {
         String sql ="SELECT * FROM tbl_coleccion WHERE id_coleccion =?";
         try{
         PreparedStatement ps = conn.conectar().prepareStatement(sql);
         ps.setInt(1, id_coleccion);
         ResultSet rs = ps.executeQuery();
         List<ColeccionBean> listar = new ArrayList<>();
        ColeccionBean colb;
         while(rs.next()){
         colb = new ColeccionBean(rs.getInt("id_coleccion"));
        colb.setId_alumno(rs.getString("id_alumno"));
        colb.setId_materia(rs.getString("id_materia"));
        colb.setId_ciclo(rs.getString("id_ciclo"));
         listar.add(colb);
         }
        return listar;
         
         } catch (Exception e) {
             return null;
        }
        
         }
}
