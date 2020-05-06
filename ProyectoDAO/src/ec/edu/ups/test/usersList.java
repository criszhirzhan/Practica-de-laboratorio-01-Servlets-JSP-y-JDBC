package ec.edu.ups.test;

import java.io.IOException;

import ec.edu.ups.dao.DAOFactory;
import ec.edu.ups.dao.TelefonoDAO;
import ec.edu.ups.dao.UsuarioDAO;
import ec.edu.ups.modelo.telefono;

public class usersList {

	public static void main(String[] args) {
			
//		
		TelefonoDAO telefonoDAO = DAOFactory.getFactory().getTelefonoDAO();
		telefonoDAO.createTable();
		System.out.println("---Telefonos ingresados\n");
		telefonoDAO.find();
		
		UsuarioDAO usuarioDAO = DAOFactory.getFactory().getUsuarioDAO();
		usuarioDAO.createTable();
		System.out.println("---Usuarios ingresados\n");
		usuarioDAO.find();
		

		
	}

}
