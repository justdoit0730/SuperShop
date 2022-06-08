package com.shop.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.dao.ProductDAO;
import com.shop.dto.ProductVO;

public class ProductDetailAction implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		String pseq = request.getParameter("pseq").trim();
		
		ProductDAO pdao = ProductDAO.getInstance();
		ProductVO pvo = pdao.getProduct(pseq);
		
		request.setAttribute("pvo", pvo);

	}

}
