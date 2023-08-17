package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.NamingException;

import context.DBContext;

/**
 * contain operations with service table
 * @author LE PHONG LAM
 *
 */
public class ServiceDAO {
	/**
	 * get uniform fee
	 * @param id
	 * @return value of uniform fee in appropriate to id
	 * @throws NamingException
	 * @throws SQLException
	 */
	public int getUniformFee(int id) throws NamingException, SQLException {
		Connection conn = new DBContext().getConnection();
		String sql = "select uniform from service where field_id=?";
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setInt(1, id);
		ResultSet rs = stmt.executeQuery();
		int result = 0;
		if(rs.next()) {
			result = rs.getInt("uniform");
		}
		return result;
	}
	
	/**
	 * get referee fee in appropriate to id
	 * @param id
	 * @return referee fee
	 * @throws NamingException
	 * @throws SQLException
	 */
	public int getRefereeFee(int id) throws NamingException, SQLException {
		Connection conn = new DBContext().getConnection();
		String sql = "select referee from service where field_id=?";
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setInt(1, id);
		ResultSet rs = stmt.executeQuery();
		int result = 0;
		if(rs.next()) {
			result = rs.getInt("referee");
		}
		return result;
	}
}
