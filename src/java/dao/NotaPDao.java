package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import modelo.NotaPBean;
import modelo.NotaPIBean;

public class NotaPDao {

     Conexion conn;

    public NotaPDao(Conexion conn) {
        this.conn = conn;
    }

    public NotaPDao() {

    }

    public boolean insertar(NotaPBean npab) {
        String sql = "INSERT INTO tbl_notaparcial VALUES(?, ?, ?, ?)";
        try {
            PreparedStatement ps = conn.conectar().prepareStatement(sql);
            ps.setInt(1, npab.getId_notaparcial());
            ps.setString(2, npab.getId_parcial());
            ps.setInt(3, npab.getId_coleccion());
            ps.setDouble(4, npab.getNota());
            ps.executeUpdate();
            return true;

        } catch (Exception e) {
            return false;

        }

    }

    public List<NotaPBean> consultar() {
        String sql = "SELECT * FROM tbl_notaparcial";
        try {
            PreparedStatement ps = conn.conectar().prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            NotaPBean npab;
            List<NotaPBean> lista = new LinkedList<>();
            while (rs.next()) {
                npab = new NotaPBean(rs.getInt("id_notaparcial"));
                npab.setId_parcial(rs.getString("id_parcial"));
                npab.setId_coleccion(rs.getInt("id_coleccion"));
                npab.setNota(rs.getDouble("nota"));
                lista.add(npab);
            }
            return lista;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }

    }

    public boolean actualizar(NotaPBean npab) {
        String sql = "UPDATE tbl_notaparcial SET id_parcial =?, id_coleccion = ?, nota = ? WHERE id_notaparcial=?";
        try {
            PreparedStatement ps = conn.conectar().prepareStatement(sql);

            ps.setString(1, npab.getId_parcial());
            ps.setInt(2, npab.getId_coleccion());
            ps.setDouble(3, npab.getNota());
            ps.setInt(4, npab.getId_notaparcial());
            ps.executeUpdate();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean eliminar(int id_notaparcial) throws Exception {
        String sql = "DELETE FROM tbl_notaparcial WHERE id_notaparcial=?";
        try {
            PreparedStatement ps = conn.conectar().prepareStatement(sql);
            ps.setInt(1, id_notaparcial);
            ps.executeUpdate();
            return true;

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public List<NotaPBean> consultarById(int id_notaparcial) {
        String sql = "SELECT * FROM tbl_notaparcial WHERE id_notaparcial =?";
        try {
            PreparedStatement ps = conn.conectar().prepareStatement(sql);
            ps.setInt(1, id_notaparcial);
            ResultSet rs = ps.executeQuery();
            List<NotaPBean> listar = new ArrayList<>();
            NotaPBean npab;
            while (rs.next()) {
                npab = new NotaPBean(rs.getInt("id_notaparcial"));
                npab.setId_parcial(rs.getString("id_parcial"));
                npab.setId_coleccion(rs.getInt("id_coleccion"));
                npab.setNota(rs.getDouble("nota"));
                listar.add(npab);
            }
            return listar;

        } catch (Exception e) {
            return null;
        }

    }
    
}
