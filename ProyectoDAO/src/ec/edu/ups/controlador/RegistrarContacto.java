package ec.edu.ups.controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ec.edu.ups.dao.DAOFactory;
import ec.edu.ups.dao.TelefonoDAO;
import ec.edu.ups.dao.UsuarioDAO;
import ec.edu.ups.modelo.Usuario;
import ec.edu.ups.modelo.telefono;

/**
 * Servlet implementation class RegistrarContacto
 */
@WebServlet("/RegistrarContacto")
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
		
		String user="";
		String numero="";
		String tipo = "";
		String operadora="";
		
		telefono telf = new telefono();
		
		String accion = request.getParameter("registrartelf");
		TelefonoDAO telefonoDao = DAOFactory.getFactory().getTelefonoDAO();
		
		if (accion.equals("registrarTelf")) {
			
			user = request.getParameter("usr");
			numero = request.getParameter("numerotxt");
			tipo = request.getParameter("tip");
			operadora = request.getParameter("operadoratxt");
			
			System.out.print(user +" "+tipo);
			
			
			telf = new telefono( user, numero, tipo, operadora);
			
			telefonoDao.create(telf);
			
			try {
				
				request.setAttribute("telefono", telefonoDao.find());				
				getServletContext().getRequestDispatcher("/Privada/index.jsp").forward(request, response);
			} catch (Exception e) {
				// TODO: handle exception
			}
			
		}
		
		
		
	}

}
