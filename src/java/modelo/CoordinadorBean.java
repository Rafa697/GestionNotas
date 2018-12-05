package modelo;

import dao.Conexion;

/**
 *
 * @author Alex
 */
public class CoordinadorBean {
    
    private String id_coordinador;
    private String id_persona;
    private String id_carrera;

    public CoordinadorBean(String id_coordinador) {
        this.id_coordinador = id_coordinador;
    }

    public CoordinadorBean() {
    }

    public String getId_coordinador() {
        return id_coordinador;
    }

    public void setId_coordinador(String id_coordinador) {
        this.id_coordinador = id_coordinador;
    }

    public String getId_persona() {
        return id_persona;
    }

    public void setId_persona(String id_persona) {
        this.id_persona = id_persona;
    }

    public String getId_carrera() {
        return id_carrera;
    }

    public void setId_carrera(String id_carrera) {
        this.id_carrera = id_carrera;
    }

    
    
}
