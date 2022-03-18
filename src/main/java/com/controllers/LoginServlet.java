package com.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DAOBooking;
import com.dao.DAOCustomer;
import com.dao.DAOUser;
import com.modelsSRP.Booking;
import com.modelsSRP.Customer;
import com.modelsSRP.User;

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			String userName = request.getParameter("login-username");
			String password = request.getParameter("signup-password");

			DAOCustomer daoCustomer = new DAOCustomer();
			DAOUser daoUser = new DAOUser();
			DAOBooking daoBooking = new DAOBooking();

			HttpSession session = request.getSession();

			int cid = daoUser.login(userName, password);
			if (cid != 0) {
				User user = daoUser.getUser(cid);
				if (!user.getRole().equalsIgnoreCase("manager")) {
					Customer customer = daoCustomer.getCustomer(user.getAccountID());

					session.setAttribute("customerInfo", customer);
					session.setAttribute("user", user);
					request.getRequestDispatcher("homepage.jsp").forward(request, response);
				} else {
					List<Booking> list = daoBooking.getBookingList(cid);
					session.setAttribute("manager", user);
					session.setAttribute("BookingList", list);
					request.getRequestDispatcher("homepage_manager.jsp").forward(request, response);
				}
			} else {

				PrintWriter out = response.getWriter();
				if (userName.contains("admin")) {
					out.print("<style>.authority {display: block !important;}</style>");
					request.getRequestDispatcher("manager_login.jsp").include(request, response);
				} else {
					out.print("<h1 style='color:red;'>Wrong UserAccount </h1>");
					request.getRequestDispatcher("login.jsp").include(request, response);
				}
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
