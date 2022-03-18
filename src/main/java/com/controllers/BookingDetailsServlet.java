package com.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DAOBooking;
import com.modelsSRP.Booking;
import com.modelsSRP.User;

public class BookingDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public BookingDetailsServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int bid = Integer.parseInt(request.getParameter("bid"));
		
		HttpSession session = request.getSession();
		User user = (User)session.getAttribute("user");
				
		DAOBooking daoBooking = new DAOBooking();
		Booking booking = daoBooking.getBooking(user.getAccountID(),bid);

		session.setAttribute("bookingDetails", booking);
		request.getRequestDispatcher("booking_details.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
