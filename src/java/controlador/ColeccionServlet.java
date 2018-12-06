
package controlador;


import dao.Conexion;
import dao.ColeccionDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.ColeccionBean;



public class ColeccionServlet extends HttpServlet {
    private ColeccionDao cold = new ColeccionDao();
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        
        try {
            switch (action) {
                case "insertar":
                    insertar(request, response);
                    break;
                case "consultar":
                    consultar(request, response);
                    break;
                case "consultarById":
                    consultarById(request, response);
                    break;
                case "eliminar":
                    eliminar(request, response);
                    break;
               case "editar":
                    editar(request, response);
                    break;
                case "actualizar":
                    actualizar(request, response);
                    break;
                default:
                    throw new AssertionError();
            }
        } catch (Exception e) {
            e.getStackTrace();
        }

    
        }
    private void insertar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
    String id_alumno = request.getParameter("id_alumno");
    String id_materia = request.getParameter("id_materia");
    String id_ciclo = request.getParameter("id_ciclo");
    ColeccionBean colb = new ColeccionBean(0);
    colb.setId_alumno(id_alumno);
    colb.setId_materia(id_materia);
    colb.setId_ciclo(id_ciclo);
    
    Conexion conn = new Conexion(); 
    ColeccionDao cold = new ColeccionDao(conn);
    boolean res = cold.insertar(colb);
    String msg;
        if (res) {
            msg ="Exito al ingresar";
        }else{
        msg = "Error al ingresar";
        }
        RequestDispatcher rd;
        request.setAttribute("msg", msg);
        rd = request.getRequestDispatcher("coleccion/insertar.jsp");
        rd.forward(request, response);
    }
        private void consultar(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException{
        Conexion conn = new Conexion();
        ColeccionDao cold = new ColeccionDao(conn);
        List<ColeccionBean> lista = cold.consultar();
        
        
        request.setAttribute("listar", lista);
         request.getRequestDispatcher("coleccion/datos.jsp").forward(request, response);
            System.out.println(lista);
    
    }
        
private void eliminar(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException, Exception{
       int id_coleccion = Integer.parseInt(request.getParameter("id_coleccion"));
       Conexion conn = new Conexion();
       ColeccionDao cold = new ColeccionDao(conn);
       
       boolean resp = cold.eliminar(id_coleccion);
       String msg;
       if (resp) {
        msg="Exito al eliminar";
    }else{
       msg="error";
       }
       List<ColeccionBean> lista = cold.consultar();
    
    request.setAttribute("msg", msg);
    request.setAttribute("listar", lista);
     request.getRequestDispatcher("coleccion/datos.jsp").forward(request, response);
   
    
    }
private void consultarById(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException, Exception{
    int id_coleccion = Integer.parseInt(request.getParameter("id_coleccion"));
       Conexion conn = new Conexion();
       ColeccionDao cold = new ColeccionDao(conn);
       List<ColeccionBean> listar = cold.consultarById(id_coleccion);
       
        
    request.setAttribute("listar", listar);
    request.getRequestDispatcher("coleccion/modificar.jsp").forward(request, response);
       

}
 private void editar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, Exception {
        Conexion conn = new Conexion();
        ColeccionDao cold = new ColeccionDao(conn);
        int id_coleccion = Integer.parseInt(request.getParameter("id_coleccion"));
        
        List<ColeccionBean> listar = cold.consultarById(id_coleccion);
        request.setAttribute("listar", listar);
        request.getRequestDispatcher("coleccion/modificar.jsp").forward(request, response);
    }

    
   protected void actualizar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id_coleccion = Integer.parseInt(request.getParameter("id_coleccion"));
        String id_alumno = request.getParameter("id_alumno");
        String id_materia = request.getParameter("id_materia");
        String id_ciclo = request.getParameter("id_ciclo");
       ColeccionBean  colb = new ColeccionBean();
        colb.setId_alumno(id_alumno);
        colb.setId_materia(id_materia);
        colb.setId_ciclo(id_ciclo);
        colb.setId_coleccion(id_coleccion);
        Conexion conn = new Conexion();
        ColeccionDao cold = new ColeccionDao(conn);
        boolean res = cold.actualizar(colb);
        String msj;
        if (res) {
            msj = "Actualizado con exito!";
        }else{
            msj = "error al actualizar";
        }
        List<ColeccionBean> listar = cold.consultar();
        request.setAttribute("msg", msj);
        request.setAttribute("listar", listar);
        RequestDispatcher rd;
        rd = request.getRequestDispatcher("rol/datos.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException{
        processRequest(request, response);
    
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException{
    processRequest(request, response);
    }
    }

    
   

