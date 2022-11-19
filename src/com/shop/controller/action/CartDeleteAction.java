package com.shop.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.dao.CartDAO;

public class CartDeleteAction implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		String[] cseqArr = request.getParameterValues("cseq");
		
		for(String cseq : cseqArr) {
			CartDAO cdao = CartDAO.getInstance();
			cdao.deleteCart(Integer.parseInt(cseq));
		}

		response.sendRedirect("cartList.do");
	}

}
