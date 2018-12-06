package modelo;

public class PruebaIntermediaBean {

    private String id_pi;
    private String nombre;
   private double porcentaje;
    
    public PruebaIntermediaBean(String id_pi) {
        this.id_pi = id_pi;
    }

    public PruebaIntermediaBean() {
       
    }

    public String getId_pi() {
        return id_pi;
    }

    public void setId_pi(String id_pi) {
        this.id_pi = id_pi;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public double getPorcentaje() {
        return porcentaje;
    }

    public void setPorcentaje(double porcentaje) {
        this.porcentaje = porcentaje;
    }
    
}
