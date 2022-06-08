package com.shop.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutAction implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(false);
		//false : 세션이 존재하면 현재 세션을 반환하고 존재하지 않으면 새로운 세션을 생성하지 않고 null 을 반환한다
		//true : 세션이 존재하면 현재 세션을 반환하고 존재하지 않으면 새로운 세션을 생성한다
		
		if(session != null) {
			session.invalidate();
		}

	}

}
