package com.shop.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shop.dao.CartDAO;
import com.shop.dto.CartVO;
import com.shop.dto.MemberVO;

public class CartInsertAction implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
		
		if(loginUser == null) {
			response.sendRedirect("loginform.do");
		}else {
			CartVO cvo = new CartVO();
			cvo.setId(loginUser.getId());
			cvo.setPseq(Integer.parseInt(request.getParameter("pseq")));
			cvo.setQuantity(Integer.parseInt(request.getParameter("quantity")));
			
			CartDAO cdao = CartDAO.getInstance();
			cdao.insertCart(cvo);
			
			
		}
		

	}

}
