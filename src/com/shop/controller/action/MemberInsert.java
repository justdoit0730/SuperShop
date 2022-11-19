package com.shop.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.dao.MemberDAO;
import com.shop.dto.MemberVO;
import com.shop.utility.SecuriyPassword;

public class MemberInsert implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		MemberVO mvo = new MemberVO();
		
		mvo.setId(request.getParameter("id"));
		mvo.setPwd(SecuriyPassword.encoding(request.getParameter("pwd")));
		mvo.setName(request.getParameter("name"));
		mvo.setEmail(request.getParameter("email"));
		mvo.setZip_num(request.getParameter("zipnum"));
		mvo.setAddress1(request.getParameter("address1"));
		mvo.setAddress2(request.getParameter("address2"));
		mvo.setPhone(request.getParameter("phone"));
		
		MemberDAO mdao = MemberDAO.getInstance();
		
		mdao.memberInsert(mvo);
		

	}

}
