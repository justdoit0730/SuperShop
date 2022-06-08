package com.shop.controller.action.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.controller.action.Command;
import com.shop.dao.OrderDAO;

public class AdminOrderSave implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		
		String page = "adminorder.do";
		
		String[] resultArr = request.getParameterValues("result");
		
		for(String oseq : resultArr) {
			OrderDAO orderDAO = OrderDAO.getInstance();
			orderDAO.updateOrderResult(oseq);
		}
		
		response.sendRedirect(page);

	}

}
