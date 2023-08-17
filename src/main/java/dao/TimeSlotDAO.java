package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.NamingException;

import context.DBContext;

/**
 * contain operations with time_slot table
 * @author LE PHONG LAM
 *
 */
public class TimeSlotDAO {
	/**
	 * get time slot fee in appropriate to time slot and id
	 * @param timeSlot
	 * @param id
	 * @return time slot fee
	 * @throw NamingException
	 * @throw SQLException
	 */
	public int getTimeSlotFee(String timeSlot, int id) throws NamingException, SQLException {
		Connection conn = new DBContext().getConnection();
		String sql = "";
		if(timeSlot.equals("06:00 - 16:00")) {
			sql = "select 06$00_16$00 from time_slot where field_id=?";
		}else if(timeSlot.equals("16:00 - 17:30")) {
			sql = "select 16$00_17$30 from time_slot where field_id=?";
		}else if(timeSlot.equals("17:30 - 20:30")) {
			sql = "select 17$30_20$30 from time_slot where field_id=?";
		}else if(timeSlot.equals("20:30 - 22:00")) {
			sql = "select 20$30_22$00 from time_slot where field_id=?";
		}
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setInt(1, id);
		ResultSet rs = stmt.executeQuery();
		int result = 0;
		if(rs.next()) {
			result = rs.getInt(1);
		}
		return result;
	}
}
