package com.controllers;

import java.io.IOException;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DAOBooking;
import com.dao.DAOCustomer;
import com.modelsSRP.Booking;
import com.modelsSRP.Customer;
import com.modelsSRP.User;

public class ManagerBookingList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ManagerBookingList() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		User manager = (User) session.getAttribute("manager");
		DAOBooking daoBooking = new DAOBooking();
		DAOCustomer daoCustomer = new DAOCustomer();

		List<Booking> list = new ArrayList<Booking>();
		Map<Integer, Booking> hashList = new HashMap<Integer, Booking>();
		List<Integer> bookingNum = new ArrayList<Integer>();
		try {
			if (manager != null) {
				bookingNum = daoBooking.getListBookingID();

				session.setAttribute("ListBookingManagement", bookingNum);
				request.getRequestDispatcher("booking.jsp").forward(request, response);
			} else {
				request.getRequestDispatcher("manager_login.jsp").forward(request, response);
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
