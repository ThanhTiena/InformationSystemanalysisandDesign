package com.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DAOBooking;
import com.dao.DAOCustomer;
import com.modelsSRP.Customer;
import com.modelsSRP.User;

public class BookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public BookServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		DAOCustomer daoCustomer = new DAOCustomer();
		DAOBooking daoBooking = new DAOBooking();

		try {
			String cname = request.getParameter("name");
			String cdob = request.getParameter("birth");
			int numPeople = Integer.parseInt(request.getParameter("people"));
			int cphone = Integer.parseInt(request.getParameter("phone-number"));
			String ccirtificate = request.getParameter("id-number");
			String arrivalDay = request.getParameter("arrive-day");
			String leaveDay = request.getParameter("leave-day");
			String rType = request.getParameter("roomtype");
			String services = request.getParameter("");

			User user = (User) session.getAttribute("user");
			Customer customer = daoCustomer.getCustomer(user.getAccountID());

//			if new user, need to update information 
			boolean flag = daoCustomer.needUpdateCustomer(user.getAccountID());
			if (!flag) {
				customer.updateCustomer(cname, cdob, ccirtificate, cphone);
				daoCustomer.updateCustomer(customer);
			}
//			if not
//			make action for booking 
			if (daoBooking.booking(user.getAccountID(), numPeople, arrivalDay, leaveDay, rType)) {
				daoBooking.updateBookingCustomer(daoCustomer.getCustomer(user.getAccountID()));

				session.setAttribute("customerInfo", customer);
				session.setAttribute("BookingStatus", true);
				request.getRequestDispatcher("homepage.jsp").forward(request, response);
			} else {
				request.getRequestDispatcher("book_room.jsp").forward(request, response);
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
