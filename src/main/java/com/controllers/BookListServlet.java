package com.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DAOBooking;
import com.modelsSRP.Booking;
import com.modelsSRP.User;

public class BookListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public BookListServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		DAOBooking daoBooking = new DAOBooking();
		List<Booking> list;

		try {
			if (user != null) {
				list = daoBooking.getBookingList(user.getAccountID());
				session.setAttribute("bookingInfo", list);
				request.getRequestDispatcher("profile.jsp").forward(request, response);
			} else {
				session.setAttribute("bookingInfo", new ArrayList<Booking>());
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
