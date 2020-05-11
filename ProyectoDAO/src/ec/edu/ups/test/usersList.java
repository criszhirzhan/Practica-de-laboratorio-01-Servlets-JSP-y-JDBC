package ec.edu.ups.test;

import java.awt.Desktop;
import java.io.IOException;
import java.net.URI;

import ec.edu.ups.dao.DAOFactory;
import ec.edu.ups.dao.TelefonoDAO;
import ec.edu.ups.dao.UsuarioDAO;
import ec.edu.ups.modelo.telefono;

public class usersList {

	public static void main(String[] args) throws IOException {
			
//		
		Desktop desktop = Desktop.getDesktop();
		String message = "mailto:dummy@domain.com?subject=First%20Email";
		URI uri = URI.create(message);
		desktop.mail(uri);
	}

}
