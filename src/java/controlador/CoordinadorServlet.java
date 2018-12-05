package controlador;

import dao.Conexion;
import dao.CoordinadorDao;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.CoordinadorBean;

/**
 *
 * @author Alex
 */
public class CoordinadorServlet extends HttpServlet {
    
    private CoordinadorDao cord = new CoordinadorDao();
    
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
            throws ServletException, IOException {
        String id_coordinador = request.getParameter("id_coordinador");
        String id_persona = request.getParameter("id_persona");
        String id_carrera = request.getParameter("id_carrera");
        CoordinadorBean corb = new CoordinadorBean();
        corb.setId_coordinador(id_coordinador);
        corb.setId_persona(id_persona);
        corb.setId_carrera(id_carrera);
        Conexion conn = new Conexion();
        CoordinadorDao cord = new CoordinadorDao(conn);
        boolean res = cord.insertar(corb);
        String msg;
        if (res) {
            msg = "Exito al ingresar";
        } else {
            msg = "Error al ingresar";
        }
        RequestDispatcher rd;
        request.setAttribute("msg", msg);
        rd = request.getRequestDispatcher("Coordinador/insertar.jsp");
        rd.forward(request, response);
    }
    
    private void consultar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Conexion conn = new Conexion();
        CoordinadorDao cord = new CoordinadorDao(conn);
        List<CoordinadorBean> lista = cord.consultar();
        
        request.setAttribute("listar", lista);
        request.getRequestDispatcher("Coordinador/datos.jsp").forward(request, response);
        System.out.println(lista);
        
    }
    
    private void eliminar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, Exception {
        String id_coordinador =request.getParameter("id_coordinador");
        Conexion conn = new Conexion();
        CoordinadorDao cord = new CoordinadorDao(conn);
        
        boolean resp = cord.eliminar(id_coordinador);
        String msg;
        if (resp) {
            msg = "Exito al eliminar";
        } else {
            msg = "error";
        }
        List<CoordinadorBean> lista = cord.consultar();
        
        request.setAttribute("msg", msg);
        request.setAttribute("listar", lista);
        request.getRequestDispatcher("Coordinador/datos.jsp").forward(request, response);
        
    }
    
    private void consultarById(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, Exception {
        String id_coordinador = request.getParameter("id_coordinador");
        Conexion conn = new Conexion();
        CoordinadorDao cord = new CoordinadorDao(conn);
        List<CoordinadorBean> listar = cord.consultarById(id_coordinador);
        
        request.setAttribute("listar", listar);
        request.getRequestDispatcher("Coordinador/modificar.jsp").forward(request, response);
        
    }
    
    private void editar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, Exception {
        Conexion conn = new Conexion();
        CoordinadorDao cord = new CoordinadorDao(conn);
        String  id_coordinador = request.getParameter("id_coordinador");
        
        List<CoordinadorBean> listar = cord.consultarById(id_coordinador);
        request.setAttribute("listar", listar);
        request.getRequestDispatcher("Coordinador/modificar.jsp").forward(request, response);
    }
    
    protected void actualizar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id_coordinador =request.getParameter("id_coordinador");
        String id_persona = request.getParameter("id_persona");
        String id_carrera = request.getParameter("id_carrera");
        CoordinadorBean corb = new CoordinadorBean();
        corb.setId_persona(id_persona);
         corb.setId_carrera(id_carrera);
        corb.setId_coordinador(id_coordinador);
        Conexion conn = new Conexion();
        CoordinadorDao cord = new CoordinadorDao(conn);
        boolean res = cord.actualizar(corb);
        String msj;
        if (res) {
            msj = "Actualizado con exito!";
        } else {
            msj = "error al actualizar";
        }
        List<CoordinadorBean> listar = cord.consultar();
        request.setAttribute("msg", msj);
        request.setAttribute("listar", listar);
        RequestDispatcher rd;
        rd = request.getRequestDispatcher("Coordinador/datos.jsp");
        rd.forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    
}
