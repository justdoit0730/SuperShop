package com.shop.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shop.dao.CartDAO;
import com.shop.dao.OrderDAO;
import com.shop.dto.CartVO;
import com.shop.dto.MemberVO;

public class OrderInsertAction implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		HttpSession session = request.getSession();
		
		MemberVO loginUser = (MemberVO)session.getAttribute("loginUser");
		
		String page = "orderList.do";
		
		if(loginUser == null) {
			page = "loginform.do";
		}else {
			CartDAO cartDAO = CartDAO.getInstance();
			List<CartVO> cartList = cartDAO.listCart(loginUser.getId());
			
			OrderDAO orderDAO = OrderDAO.getInstance();
			int maxOseq = orderDAO.insertOrder(cartList, loginUser.getId());
			page = "orderList.do?oseq="+maxOseq;
		}
		response.sendRedirect(page);

	}

}
