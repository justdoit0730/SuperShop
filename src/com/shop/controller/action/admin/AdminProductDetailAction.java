package com.shop.controller.action.admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.shop.controller.action.Command;

public class AdminProductDetailAction implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		//서버상의 실제 경로 찾는 방법
		ServletContext svc = request.getServletContext();
		String path = svc.getRealPath("product_images");
		System.out.println("server real directory : "+path);
		String encType="utf-8";
		int maxPostSize = 20 * 1024 * 1024;
		
		MultipartRequest multi = new MultipartRequest(
				request,
				path,
				maxPostSize,
				encType,
				new DefaultFileRenamePolicy()
				);
		response.setContentType("text/html, charset=utf-8");
		PrintWriter out = response.getWriter();
		String file = multi.getFilesystemName("file");
		out.print("product_images"+"/"+file);
		out.close();

	}

}
