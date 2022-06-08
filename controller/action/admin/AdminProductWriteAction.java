package com.shop.controller.action.admin;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.shop.controller.action.Command;
import com.shop.dao.ProductDAO;
import com.shop.dto.ProductVO;

public class AdminProductWriteAction implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("utf-8");
		
		HttpSession session = request.getSession();
		
		int sizeLimit = 5 * 1024 * 1024;
		String savePath = "product_images";
		ServletContext context = session.getServletContext();
		String uploadFilePath = context.getRealPath(savePath);
		System.out.println(uploadFilePath);
		
		MultipartRequest multi = new MultipartRequest(
				request, 
				uploadFilePath, 
				sizeLimit,"utf-8", 
				new DefaultFileRenamePolicy()
				);
		
		
		ProductVO pvo = new ProductVO();
		pvo.setKind(multi.getParameter("kind"));
		pvo.setName(multi.getParameter("name"));
		pvo.setPrice1(Integer.parseInt(multi.getParameter("price1")));
		pvo.setPrice2(Integer.parseInt(multi.getParameter("price2")));
		pvo.setPrice3(Integer.parseInt(multi.getParameter("price2")) 
				- Integer.parseInt(multi.getParameter("price1")));
		pvo.setContent(multi.getParameter("content"));
		pvo.setImage(multi.getFilesystemName("image"));
		
		ProductDAO pdao = ProductDAO.getInstance();
		
		pdao.insertProduct(pvo);
		
		
		
	}

}
