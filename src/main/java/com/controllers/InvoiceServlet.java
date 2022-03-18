package com.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.DAOBooking;


public class InvoiceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public InvoiceServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			int invoiceID = Integer.parseInt(request.getParameter("invoice"));
			
			DAOBooking daoBooking = new DAOBooking();
			if(daoBooking.cancelBooking(invoiceID)) {
				request.getRequestDispatcher("BookListServlet").forward(request, response);;
			}else {
				request.getRequestDispatcher("booking_details.jsp").forward(request, response);
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
