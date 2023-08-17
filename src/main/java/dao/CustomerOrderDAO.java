package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.naming.NamingException;

import beans.CustomerOrder;
import beans.Service;
import beans.TimeSlot;
import context.DBContext;
/**
 * contain operations with customer_order table
 * @author LE PHONG LAM
 *
 */
public class CustomerOrderDAO {
	/**
	 * add order information into customer_order table
	 * @param customerOrder
	 * @param service
	 * @param timeSlot
	 * @return number of line is added into customer_order table
	 * @throws NamingException
	 * @throws SQLException
	 */
	public int addCustomer(CustomerOrder customerOrder, Service service, TimeSlot timeSlot) throws NamingException, SQLException {
		Connection conn = new DBContext().getConnection();
		String sql = "insert into customer_order(customer_name, phone, number_team, number_player, times, time_slot_fee, uniform_fee, referee_fee, periodic, field_id)"
				+ "values(?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setString(1, customerOrder.getCustomerName());
		stmt.setString(2, customerOrder.getPhone());
		stmt.setInt(3, customerOrder.getNumberTeam());
		stmt.setInt(4, customerOrder.getNumberPlayer());
		stmt.setDouble(5, customerOrder.getTimes());
		stmt.setInt(6, timeSlot.getTimeSlotFee());
		stmt.setInt(7, service.getUniformFee());
		stmt.setInt(8, service.getRefereeFee());
		stmt.setString(9, customerOrder.getPeriodic());
		stmt.setInt(10, customerOrder.getFieldId());
		
		int result = stmt.executeUpdate();
		stmt.close();
		return result;
	}
}
