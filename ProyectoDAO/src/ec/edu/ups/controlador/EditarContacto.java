package ec.edu.ups.controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ec.edu.ups.dao.DAOFactory;
import ec.edu.ups.dao.TelefonoDAO;
import ec.edu.ups.modelo.telefono;

/**
 * Servlet implementation class EditarContacto
 */
@WebServlet("/EditarContacto")
public class EditarContacto extends HttpServlet {
	private static final long serialVersionUID = 1L;
	telefono telf =null;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EditarContacto() {
		super();
		telf = new telefono();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());

		TelefonoDAO telefonoDao = DAOFactory.getFactory().getTelefonoDAO();

		telf = telefonoDao.read(Integer.parseInt(request.getParameter("id")));
		
		System.out.print(telf.id_user+" "+telf.operadora+" "+telf.numero);
		request.setAttribute("telefono", telf);
		getServletContext().getRequestDispatcher("/Privada/modificar.jsp").forward(request, response);
	}
	
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		

		String user="";
		String numero="";
		String tipo = "";
		String operadora="";
		

		String accion = request.getParameter("modificartelf");
		TelefonoDAO telefonoDao = DAOFactory.getFactory().getTelefonoDAO();

		if (accion.equals("modificarTelf")) {
			user = request.getParameter("nombrestext");
			numero = request.getParameter("numerotxt");
			tipo = request.getParameter("tipotext");
			operadora = request.getParameter("operadoratxt");

			

			telf.setNumero(numero);
			telf.setOperadora(operadora);
			telf.setTipo(tipo);
			
			telefonoDao.update(telf);


		}
		
		try {
			request.setAttribute("telefono", telefonoDao.find());				
			getServletContext().getRequestDispatcher("/Privada/index.jsp").forward(request, response);
		} catch (Exception e) {
			// TODO: handle exception
		}

	}

}