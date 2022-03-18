package com.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DAOBooking;
import com.modelsSRP.Payment;
import com.modelsSRP.User;

public class MakePaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public MakePaymentServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		DAOBooking daoBooking  = new DAOBooking();
		User user = (User) session.getAttribute("user");
		
		int bid = Integer.parseInt(request.getParameter("bid"));
		Payment payment = new Payment(daoBooking.getBooking(user.getAccountID(),bid));
		payment.calculateBill();
		
		session.setAttribute("payment", payment);
		request.getRequestDispatcher("bill.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
