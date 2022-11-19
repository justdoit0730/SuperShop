package com.shop.controller.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.dao.MemberDAO;

public class CheckUseridAction implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		
		int result = MemberDAO.getInstance().memberIdCheck(id);
		
		PrintWriter out = response.getWriter();
		out.print(result);

	}

}
