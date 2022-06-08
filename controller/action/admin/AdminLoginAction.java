package com.shop.controller.action.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shop.controller.action.Command;
import com.shop.dao.MemberDAO;
import com.shop.dto.MemberVO;
import com.shop.utility.SecuriyPassword;

public class AdminLoginAction implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");

		String id = request.getParameter("id");
		String pwd = SecuriyPassword.encoding(request.getParameter("pwd"));
		String id_rem = request.getParameter("id_rem");
		Cookie cookie = null;
		
		if(id_rem != null && id_rem.trim().equals("on")) {
			cookie = new Cookie("id", java.net.URLEncoder.encode(id));
			//https://dololak.tistory.com/19 자바 URLEncoding 이란
			cookie.setMaxAge(60*60*24*365); //유효시간을 세팅 1년
			response.addCookie(cookie);
		}else {
			cookie = new Cookie("id", null);
			cookie.setMaxAge(0); //유효시간을 0으로
			response.addCookie(cookie);
		}
		MemberVO mvo = new MemberVO();
		mvo.setId(id);
		mvo.setPwd(pwd);
		
		MemberDAO mdao = MemberDAO.getInstance();
		int result = mdao.adminIdPwdCheck(mvo);
		
		HttpSession session = request.getSession();
		
		if(result == 1) {
			session.setAttribute("adminId", id);
		}

	}

}
