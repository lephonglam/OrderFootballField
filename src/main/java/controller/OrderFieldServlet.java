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
import beans.FootballField;
import beans.Service;
import beans.TimeSlot;
import dao.ServiceDAO;
import dao.TimeSlotDAO;

/**
 * Servlet implementation class OrderFieldServlet
 */
@WebServlet("/OrderFieldServlet")
public class OrderFieldServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderFieldServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		TimeSlotDAO timeSlotDAO = new TimeSlotDAO();
		ServiceDAO serviceDAO = new ServiceDAO();
		HttpSession session = request.getSession(true);
		FootballField footballField = (FootballField) session.getAttribute("footballField");
		if(request.getCharacterEncoding() == null) {
			request.setCharacterEncoding("UTF-8");
		}
		String customerName = request.getParameter("tennguoidat");
		String phone = request.getParameter("sodienthoai");
		String rawTimeSlot = request.getParameter("khunggio");
		double times = Double.parseDouble(request.getParameter("sogio"));
		int numberPlayer = Integer.parseInt(request.getParameter("songuoichoi"));
		int numberTeam = Integer.parseInt(request.getParameter("sodoichoi"));
		String periodic = request.getParameter("datdinhki");
		String uniform = request.getParameter("dongphuc");
		String referee = request.getParameter("trongtai");
		int uniformFee = 0;
		int refereeFee = 0;
		int timeSlotFee = 0;
		try {
			timeSlotFee = timeSlotDAO.getTimeSlotFee(rawTimeSlot, footballField.getId());
			if(uniform.equals("checked")) {
				uniformFee = serviceDAO.getUniformFee(footballField.getId());
			}
			if(referee.equals("checked")) {
				refereeFee = serviceDAO.getRefereeFee(footballField.getId());
			}
		} catch (NamingException | SQLException e) {
			// TODO Auto-generated catch block
			response.getWriter().println(e);
		}
		CustomerOrder customerOrder = new CustomerOrder(customerName, phone, numberTeam, 
				numberPlayer, times, periodic, footballField.getId());
		Service service = new Service(uniformFee, refereeFee);
		TimeSlot timeSlot = new TimeSlot(timeSlotFee);
		long total = Math.round((timeSlotFee + refereeFee)*times + uniformFee*numberTeam);
		session.setAttribute("customerOrder", customerOrder);
		session.setAttribute("service", service);
		session.setAttribute("timeSlot", timeSlot);
		session.setAttribute("total", total);
		response.sendRedirect("view/confirm.jsp");
	}
}
