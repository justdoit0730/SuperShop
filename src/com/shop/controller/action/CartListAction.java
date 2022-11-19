package com.shop.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shop.dao.CartDAO;
import com.shop.dto.CartVO;
import com.shop.dto.MemberVO;

public class CartListAction implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		MemberVO loginUser = (MemberVO)session.getAttribute("loginUser");
		
		String url="mypage/cartlist.jsp";
		
		if(loginUser == null) {
			url="loginform.do";
		}else {
			CartDAO cdao = CartDAO.getInstance();
			List<CartVO> clist = cdao.listCart(loginUser.getId());
			
			int totalPrice=0;
			for(CartVO cvo : clist) { //향상된 for문
				totalPrice += cvo.getPrice2() * cvo.getQuantity();
			}
			
			request.setAttribute("cartList", clist);
			request.setAttribute("totalPrice", totalPrice);
		}
		request.getRequestDispatcher(url).forward(request, response);

	}

}
