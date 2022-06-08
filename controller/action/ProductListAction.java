package com.shop.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.dao.ProductDAO;
import com.shop.dto.ProductVO;

public class ProductListAction implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		/*
		 * ProductDAO pdao = ProductDAO.getInstance();
		 * 
		 * List<ProductVO> newList = pdao.listNewProduct(); 
		 * List<ProductVO> bestList = pdao.listBestProduct();
		 * 
		 * request.setAttribute("newList", newList);
		 * request.setAttribute("bestList",bestList);
		 */
		String kind = request.getParameter("kind");
		
		ProductDAO pdao = ProductDAO.getInstance();
			
			List<ProductVO> newlist = pdao.Productkind(kind);
			
			request.setAttribute("newList", newlist);
			
			
			
		
	}

}
