package controlador;

import dao.Conexion;
import dao.NotaPDao;
import dao.NotaPIDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.NotaPBean;
import modelo.NotaPIBean;

public class NotaPServlet extends HttpServlet {

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
        
        String id_parcial = request.getParameter("id_parcial");
        int id_coleccion = Integer.parseInt(request.getParameter("id_coleccion"));
        
        Double nota = Double.parseDouble(request.getParameter("nota"));
        NotaPBean npab = new NotaPBean(0);
        npab.setId_parcial(id_parcial);
        npab.setId_coleccion(id_coleccion);
        npab.setNota(nota);
        Conexion conn = new Conexion();
        NotaPDao npad = new NotaPDao(conn);
        boolean res = npad.insertar(npab);
        String msg;
        if (res) {
            msg = "Exito al ingresar";
        } else {
            msg = "Error al ingresar";
        }
       
        request.setAttribute("msg", msg);
         request.getRequestDispatcher("NotaParcial/insertar.jsp").forward(request, response);
          request.getRequestDispatcher("catedratico/NotaParcial/insertar.jsp").forward(request, response);
    }

    private void consultar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Conexion conn = new Conexion();
        NotaPDao npad = new NotaPDao(conn);
        List<NotaPBean> lista = npad.consultar();

        request.setAttribute("listar", lista);
        request.getRequestDispatcher("NotaParcial/datos.jsp").forward(request, response);
        request.getRequestDispatcher("catedratico/NotaParcial/datos.jsp").forward(request, response);
        request.getRequestDispatcher("alumno/NotaParcial/datos.jsp").forward(request, response);
        System.out.println(lista);

    }

    private void eliminar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, Exception {
        int id_notaparcial = Integer.parseInt(request.getParameter("id_notaparcial"));
        Conexion conn = new Conexion();
        NotaPDao npad = new NotaPDao(conn);

        boolean resp = npad.eliminar(id_notaparcial);
        String msg;
        if (resp) {
            msg = "Exito al eliminar";
        } else {
            msg = "Error";
        }
        List<NotaPBean> lista = npad.consultar();

        request.setAttribute("msg", msg);
        request.setAttribute("listar", lista);
        request.getRequestDispatcher("NotaParcial/datos.jsp").forward(request, response);
        request.getRequestDispatcher("catedratico/NotaParcial/datos.jsp").forward(request, response);

    }

    private void consultarById(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, Exception {
        int id_notaparcial = Integer.parseInt(request.getParameter("id_notaparcial"));
        Conexion conn = new Conexion();
        NotaPDao npad = new NotaPDao(conn);
        List<NotaPBean> listar = npad.consultarById(id_notaparcial);

        request.setAttribute("listar", listar);
        request.getRequestDispatcher("NotaParcial/modificar.jsp").forward(request, response);
        request.getRequestDispatcher("catedratico/NotaParcial/modificar.jsp").forward(request, response);

    }

    private void editar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, Exception {
        Conexion conn = new Conexion();
        NotaPDao npad = new NotaPDao(conn);
        int id_notaparcial = Integer.parseInt(request.getParameter("id_notaparcial"));

        List<NotaPBean> listar = npad.consultarById(id_notaparcial);
        request.setAttribute("listar", listar);
        request.getRequestDispatcher("NotaParcial/modificar.jsp").forward(request, response);
        request.getRequestDispatcher("catedratico/NotaParcial/modificar.jsp").forward(request, response);
    }

    protected void actualizar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id_parcial = request.getParameter("id_parcial");
        int id_coleccion = Integer.parseInt(request.getParameter("id_coleccion"));
        Double nota = Double.parseDouble(request.getParameter("nota"));
        NotaPBean npab = new NotaPBean();
        npab.setId_parcial(id_parcial);
        npab.setId_coleccion(id_coleccion);
        npab.setNota(nota);
        Conexion conn = new Conexion();
        NotaPDao npad = new NotaPDao(conn);
        boolean res = npad.actualizar(npab);
        String msj;
        if (res) {
            msj = "Actualizado con exito!";
        } else {
            msj = "error al actualizar";
        }
        List<NotaPBean> listar = npad.consultar();
        request.setAttribute("msg", msj);
        request.setAttribute("listar", listar);
       request.getRequestDispatcher("NotaParcial/datos.jsp").forward(request, response);
       request.getRequestDispatcher("catedratico/NotaParcial/datos.jsp").forward(request, response);
        
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

}
