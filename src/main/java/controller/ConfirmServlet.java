package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.CustomerOrder;
import beans.Service;
import beans.TimeSlot;
import dao.CustomerOrderDAO;

/**
 * Servlet implementation class ConfirmServlet
 */
@WebServlet("/ConfirmServlet")
public class ConfirmServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConfirmServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		CustomerOrderDAO customerOrderDAO = new CustomerOrderDAO();
		CustomerOrder customerOrder = (CustomerOrder) session.getAttribute("customerOrder");
		Service service = (Service) session.getAttribute("service");
		TimeSlot timeSlot = (TimeSlot) session.getAttribute("timeSlot");
		try {
			if(customerOrderDAO.addCustomer(customerOrder, service, timeSlot) > 0) {
				response.sendRedirect("view/ordersuccess.jsp");
			}else {
				session.setAttribute("error", "Đặt sân không thành công!");
				response.sendRedirect("view/confirm.jsp");
			}
		} catch (NamingException | SQLException e) {
			// TODO Auto-generated catch block
			response.getWriter().println(e);
		}
	}

}
