package com.controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DAOCustomer;
import com.dao.DAOUser;
import com.modelsSRP.User;

public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			HttpSession session = request.getSession();

			String userName = request.getParameter("signup-username");
			String email = request.getParameter("signup-email");
			String password = request.getParameter("signup-password");

			DAOUser daoUser = new DAOUser();
			DAOCustomer daoCustomer = new DAOCustomer();
			
			int userID = daoUser.register(userName, password, email);

			if (userID != 0) {
				daoCustomer.register(userID, email);
				
				User user = daoUser.getUser(userID);
				session.setAttribute("user", user);

				request.getRequestDispatcher("homepage.jsp").forward(request, response);
			} else {
				request.getRequestDispatcher("register.jsp").forward(request, response);
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
