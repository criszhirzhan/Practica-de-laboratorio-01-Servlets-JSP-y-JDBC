package ec.edu.ups.dao;

import java.util.List;

import ec.edu.ups.modelo.Contacto;
import ec.edu.ups.modelo.telefono;

public interface TelefonoDAO extends GenericDAO<telefono, Integer >  {

	
	List<Contacto> buscarCorreo(String correo);
	List<telefono> buscarCedula(String cedula);
	List<Contacto> obtenerContacto();

	List<Contacto> buscarCedInv(String cedula);



}
