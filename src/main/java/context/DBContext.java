package context;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
/**
 * get Connection object
 * @author LE PHONG LAM
 * @return Connection
 * @throw NamingException
 * @throw SQLException
 */
public class DBContext {
	public Connection getConnection() throws NamingException, SQLException {
		InitialContext initContext = new InitialContext();
		Context env = (Context) initContext.lookup("java:comp/env");
		DataSource ds = (DataSource) env.lookup("jdbc/footballfielddb");
		return ds.getConnection();
	}
}
