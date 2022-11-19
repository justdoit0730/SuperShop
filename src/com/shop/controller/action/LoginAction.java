package com.shop.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shop.dao.MemberDAO;
import com.shop.dto.MemberVO;
import com.shop.utility.SecuriyPassword;

public class LoginAction implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		HttpSession session = request.getSession();

		String id = request.getParameter("userid");
		String pwd = request.getParameter("userpwd");
		
		MemberDAO mdao = MemberDAO.getInstance();
		
		MemberVO mvo = mdao.getMember(id);

		System.out.println("pwd :"+pwd);
		if(mvo != null) {
			if(mvo.getPwd().equals(SecuriyPassword.encoding(pwd))) {
				session.setAttribute("loginUser", mvo);
			}
		}
		

		
		
		

	}

}
