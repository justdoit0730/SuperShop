package com.shop.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.dao.ProductDAO;
import com.shop.dto.ProductVO;

public class IndexAction implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		ProductDAO pdao = ProductDAO.getInstance();
		
		List<ProductVO> newList = pdao.listNewProduct();
		List<ProductVO> bestList = pdao.listBestProduct();
		
		request.setAttribute("newList", newList);
		request.setAttribute("bestList", bestList);
	}

}
