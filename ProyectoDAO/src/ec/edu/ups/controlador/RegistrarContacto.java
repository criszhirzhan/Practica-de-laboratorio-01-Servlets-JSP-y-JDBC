package ec.edu.ups.controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ec.edu.ups.dao.DAOFactory;
import ec.edu.ups.dao.TelefonoDAO;
import ec.edu.ups.dao.UsuarioDAO;
import ec.edu.ups.modelo.Usuario;
import ec.edu.ups.modelo.telefono;

/**
 * Servlet implementation class RegistrarContacto
 */


@WebServlet(name = "RegistrarContacto", urlPatterns = { "/RegistrarContacto" })
public class RegistrarContacto extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistrarContacto() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	
		String numero="";
		String tipo = "";
		String operadora="";
		
		HttpSession sesion = request.getSession();
		
		sesion.setAttribute("accesos", sesion.getAttribute("accesos"));
		
		
		
		telefono telf = new telefono();
		Usuario user = new Usuario();
		String accion = request.getParameter("registrartelf");
		TelefonoDAO telefonoDao = DAOFactory.getFactory().getTelefonoDAO();
		UsuarioDAO usuarioDao = DAOFactory.getFactory().getUsuarioDAO();
		if (accion.equals("registrarTelf")) {
			
			//user = request.getParameter("usr");
			numero = request.getParameter("numerotxt");
			tipo = request.getParameter("tip");
			operadora = request.getParameter("operadoratxt");
			user=usuarioDao.read("'"+request.getParameter("ced")+"'");
			System.out.print(user +" "+tipo);
			
			System.out.print("CEDULA:   "+request.getParameter("ced"));
			telf = new telefono( request.getParameter("ced"), numero, tipo, operadora);
			
			telefonoDao.create(telf);
			
			try {
				request.setAttribute("usuario", user);
				request.setAttribute("telefono", telefonoDao.buscarCedula( request.getParameter("ced")));				
				getServletContext().getRequestDispatcher("/Privada/indexU.jsp").forward(request, response);
			} catch (Exception e) {
				// TODO: handle exception
			}
			
		}
		
		
		
	}

}
