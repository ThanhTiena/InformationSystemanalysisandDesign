package com.controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.DAOCustomer;

public class GetBackAccount extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			DAOCustomer daoCustomer = new DAOCustomer();
			String email = request.getParameter("email_getback");
			
			int cid = daoCustomer.checkCustomerExisted(email);
			if(cid != 0 ) {
				request.getSession().setAttribute("getBackCID", cid);
				request.getRequestDispatcher("change_password.jsp").forward(request, response);
			}else {
				PrintWriter out = response.getWriter();
				out.print("<h3>The account do not existed</h3>");
				request.getRequestDispatcher("forget.jsp").forward(request, response);
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
