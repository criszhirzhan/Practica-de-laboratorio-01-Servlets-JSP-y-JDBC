package ec.edu.ups.controlador;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.descriptor.web.LoginConfig;

import ec.edu.ups.dao.DAOFactory;
import ec.edu.ups.dao.TelefonoDAO;
import ec.edu.ups.dao.UsuarioDAO;
import ec.edu.ups.modelo.Usuario;


/**
 * Servlet implementation class iniciarSesion
 */
@WebServlet(name = "iniciarSesion", urlPatterns = {"/iniciarSesion"})
public class IniciarSesion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public IniciarSesion() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    
    @Override
    public void init() throws 	ServletException{
    	System.out.print("Se instancia el Servidor...");
    }

    


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html:charset=UTF-8");
		
		UsuarioDAO usuarioDao = DAOFactory.getFactory().getUsuarioDAO();
		String correo = "";
		String contrasena = "";
		String url=null;
		int i=0;
	
		
		String accion = request.getParameter("accion");
		Usuario user = new Usuario();
		HttpSession sesion = request.getSession(true);
		
		
		if (sesion.isNew()) {
		//	out.println("<h1>Gracias por acceder al servidor</h1>");
			sesion.setAttribute("accesos", 1);
			
			if (accion.equals("Ingresar")) {
				correo = request.getParameter("correo");
				contrasena = request.getParameter("contrasena");
				user=usuarioDao.buscar(correo, contrasena);
				
			}
			
			try {
				if (user!=null) {
					TelefonoDAO telefonoDao = DAOFactory.getFactory().getTelefonoDAO();
					//System.out.println(telefonoDao.find().telf_id +','+ str.id_user +','+str.numero+','+str.tipo+','+str.operadora);
					
					request.setAttribute("telefono", telefonoDao.buscarCedula(user.getCedula()));
					request.setAttribute("usuario", user);
					getServletContext().getRequestDispatcher("/Privada/indexU.jsp").forward(request, response);
				}else {
					//url="/Public/login.jsp";
					
					getServletContext().getRequestDispatcher("/Public/login.jsp").forward(request, response);
				}

				
			} catch (Exception e) {
				
				// TODO: handle exception
			}
			
			
		}else {}
		
	}

}
