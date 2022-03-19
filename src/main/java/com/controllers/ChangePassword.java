package com.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DAOUser;

public class ChangePassword extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ChangePassword() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			HttpSession session = request.getSession();

			DAOUser daoUser = new DAOUser();

			int cid = (Integer) session.getAttribute("getBackCID");
			String newPassword = request.getParameter("new-password");
			if (daoUser.changePassword(cid, newPassword)) {
				request.getRequestDispatcher("login.jsp").forward(request, response);
			} else {
				request.getRequestDispatcher("homepage.jsp").forward(request, response);
			}
		} catch (Exception e) {
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
