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

/**
 * Servlet implementation class IndesController
 */
@WebServlet("/IndexController")
public class IndexController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IndexController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());

		TelefonoDAO telefonoDao = DAOFactory.getFactory().getTelefonoDAO();
			
		if (Integer.parseInt(request.getParameter("id"))==1) {
			
			UsuarioDAO usuarioDao = DAOFactory.getFactory().getUsuarioDAO();
			request.setAttribute("idc", request.getParameter("c"));
			request.setAttribute("usuarios", usuarioDao.find());
			getServletContext().getRequestDispatcher("/Privada/registrar.jsp").forward(request, response);
			
		}else if(Integer.parseInt(request.getParameter("id"))==2) {
			

			//System.out.println(telefonoDao.find().telf_id +','+ str.id_user +','+str.numero+','+str.tipo+','+str.operadora);
			
			request.setAttribute("telefono", telefonoDao.find());				
			getServletContext().getRequestDispatcher("/Privada/indexU.jsp").forward(request, response);
			
		}
		
		if(Integer.parseInt(request.getParameter("id"))==3) {
			System.out.print("Esta ingresando....");
			
			request.setAttribute("telefono", telefonoDao.obtenerContacto());				
			getServletContext().getRequestDispatcher("/Privada/indexI.jsp").forward(request, response);
			
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
