
package modelo;


public class ColeccionBean {
    
    private int id_coleccion;
    private String id_alumno;
    private String id_materia;
    private String id_ciclo;

    public ColeccionBean(int id_coleccion) {
        this.id_coleccion = id_coleccion;
    }

    public ColeccionBean() {
    }

    public int getId_coleccion() {
        return id_coleccion;
    }

    public void setId_coleccion(int id_coleccion) {
        this.id_coleccion = id_coleccion;
    }

    public String getId_alumno() {
        return id_alumno;
    }

    public void setId_alumno(String id_alumno) {
        this.id_alumno = id_alumno;
    }

    public String getId_materia() {
        return id_materia;
    }

    public void setId_materia(String id_materia) {
        this.id_materia = id_materia;
    }

    public String getId_ciclo() {
        return id_ciclo;
    }

    public void setId_ciclo(String id_ciclo) {
        this.id_ciclo = id_ciclo;
    }
    
}
