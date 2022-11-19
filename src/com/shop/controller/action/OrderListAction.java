package com.shop.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shop.dao.OrderDAO;
import com.shop.dto.CartVO;
import com.shop.dto.MemberVO;
import com.shop.dto.OrderVO;

public class OrderListAction implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		
		HttpSession session = request.getSession();
		
		MemberVO loginUser = (MemberVO)session.getAttribute("loginUser");
		
		String page = "mypage/orderlist.jsp";

		if(loginUser == null) {
			page = "loginform.do";
		}else {
			OrderDAO orderDAO = OrderDAO.getInstance();
			int oseq = Integer.parseInt(request.getParameter("oseq"));
			List<OrderVO> orderList = orderDAO.listOrderById(loginUser.getId(),"1",oseq);
			
			int totalPrice=0;
			for(OrderVO ovo : orderList) { //향상된 for문
				totalPrice += ovo.getPrice2() * ovo.getQuantity();
			}
			
			
			request.setAttribute("orderList", orderList);
			request.setAttribute("totalPrice", totalPrice);
		}
		request.getRequestDispatcher(page).forward(request, response);
	}

}
