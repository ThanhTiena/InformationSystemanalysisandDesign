package com.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DAOBooking;
import com.modelsSRP.Booking;

public class UpdateBookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UpdateBookingServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		DAOBooking daoBooking = new DAOBooking();
		try {
			int bid = Integer.parseInt(request.getParameter("bid"));
			int cid = Integer.parseInt(request.getParameter("cid"));
			String remark = request.getParameter("remark");
			String status = request.getParameter("status");

			Booking booking = daoBooking.getBooking(cid, bid);
			booking.confirmBooking(remark, status);
			
			HttpSession session = request.getSession();
			if (daoBooking.confirmBooking(booking)) {
				
				booking = daoBooking.getBooking(cid, bid);
				session.setAttribute("bookingDetailsManagement", booking);
				request.getRequestDispatcher("booking_details_manager.jsp").forward(request, response);
			} else {
				request.getRequestDispatcher("booking.jsp").forward(request, response);
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
