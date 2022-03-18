package com.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DAOBooking;
import com.modelsSRP.Booking;

public class BookingDetailsManagerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public BookingDetailsManagerServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int bid = Integer.parseInt(request.getParameter("bid"));
		int uid =  Integer.parseInt(request.getParameter("uid"));
		
		HttpSession session = request.getSession();
				
		DAOBooking daoBooking = new DAOBooking();
		Booking booking = daoBooking.getBooking(uid,bid);

		session.setAttribute("bookingDetailsManagement", booking);
		request.getRequestDispatcher("booking_details_manager.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
