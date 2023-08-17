package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.NamingException;


import beans.FootballField;
import context.DBContext;
/**
 * contain operations with football_field table
 * @author LE PHONG LAM
 *
 */
public class FootballFieldDAO {
	/**
	 * get football field by id
	 * @param id
	 * @throw NamingException
	 * @throw SQLException
	 */
	public FootballField getFootballFieldById(int id) throws NamingException, SQLException {
		Connection conn = new DBContext().getConnection();
		String sql="select * from football_field where id=?";
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setInt(1, id);
		ResultSet rs = stmt.executeQuery();
		String name = "";
		String address = "";
		String contact = "";
		if(rs.next()) {
			name = rs.getString("name");
			address = rs.getString("address");
			contact = rs.getString("contact");
		}
		return new FootballField(id, name, address, contact);
	}
}
