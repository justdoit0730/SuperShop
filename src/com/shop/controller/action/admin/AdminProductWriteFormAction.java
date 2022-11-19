package com.shop.controller.action.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.controller.action.Command;

public class AdminProductWriteFormAction implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String kindList[] = {"건담","피규어","프라모델","과학교재"};
		request.setAttribute("kindList", kindList);
		
	}

}
