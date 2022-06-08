package com.shop.controller.action.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.controller.action.Command;
import com.shop.dao.ProductDAO;
import com.shop.dto.ProductVO;

public class AdminProductListAction implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ProductDAO pdao = ProductDAO.getInstance();
		List<ProductVO> list = pdao.listProduct();
		request.setAttribute("list", list);

	}

}
