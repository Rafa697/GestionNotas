package modelo;

public class NotaPBean {

    private int id_notaparcial;
    private String id_parcial;
    private int id_coleccion;
    private Double nota;
    
    public NotaPBean(int id_notaparcial) {
        this.id_notaparcial = id_notaparcial;
    }

    public NotaPBean() {
       
    }

    public int getId_notaparcial() {
        return id_notaparcial;
    }

    public void setId_notaparcial(int id_notaparcial) {
        this.id_notaparcial = id_notaparcial;
    }

    public String getId_parcial() {
        return id_parcial;
    }

    public void setId_parcial(String id_parcial) {
        this.id_parcial = id_parcial;
    }

    public int getId_coleccion() {
        return id_coleccion;
    }

    public void setId_coleccion(int id_coleccion) {
        this.id_coleccion = id_coleccion;
    }

    public Double getNota() {
        return nota;
    }

    public void setNota(Double nota) {
        this.nota = nota;
    }
    
}
