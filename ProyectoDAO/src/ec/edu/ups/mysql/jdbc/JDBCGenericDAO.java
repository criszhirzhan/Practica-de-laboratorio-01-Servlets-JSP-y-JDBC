package ec.edu.ups.mysql.jdbc;

import java.util.List;

import ec.edu.ups.dao.GenericDAO;
import ec.edu.ups.modelo.telefono;

public abstract class JDBCGenericDAO <T,ID> implements GenericDAO<T, ID>{
	protected ContextJDBC conexionUno = ContextJDBC.getJDBC1();
	protected ContextJDBC conexionDos = ContextJDBC.getJDBC2();

}
