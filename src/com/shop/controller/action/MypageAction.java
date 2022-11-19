package com.shop.controller.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shop.dao.OrderDAO;
import com.shop.dto.MemberVO;
import com.shop.dto.OrderVO;

public class MypageAction implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String page = "mypage/mypage.jsp";
		
		HttpSession session = request.getSession();
		MemberVO loginUser = (MemberVO)session.getAttribute("loginUser");
		
		if(loginUser == null) {
			page = "loginform.do";
		}else {
			OrderDAO orderDAO = OrderDAO.getInstance();
			List<Integer> oseqList = orderDAO.selectSeqOrderIng(loginUser.getId());
			List<OrderVO> orderList = new ArrayList<OrderVO>();
			for(int oseq : oseqList) {
				
				List<OrderVO> orderListIng = orderDAO.listOrderById(loginUser.getId(), "1", oseq);
				
				OrderVO orderVO = orderListIng.get(0);
				orderVO.setPname(orderVO.getPname() + "외 "+orderListIng.size() + "건");
				
				int totalPrice = 0;
				for(OrderVO ovo : orderListIng) {
					totalPrice += ovo.getPrice2() * ovo.getQuantity();
				}
				orderVO.setPrice2(totalPrice);
				orderList.add(orderVO);
			}
			request.setAttribute("title", "진행중인 주문 내역");
			request.setAttribute("orderList", orderList);
		}
		
		request.getRequestDispatcher(page).forward(request, response);

	}

}
