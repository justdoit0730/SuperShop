package com.shop.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.controller.action.CartDeleteAction;
import com.shop.controller.action.CartInsertAction;
import com.shop.controller.action.CartListAction;
import com.shop.controller.action.CheckUseridAction;
import com.shop.controller.action.IndexAction;
import com.shop.controller.action.LoginAction;
import com.shop.controller.action.LogoutAction;
import com.shop.controller.action.MemberInsert;
import com.shop.controller.action.MypageAction;
import com.shop.controller.action.OrderAllAction;
import com.shop.controller.action.OrderDetailAction;
import com.shop.controller.action.OrderInsertAction;
import com.shop.controller.action.OrderListAction;
import com.shop.controller.action.ProductDetailAction;
import com.shop.controller.action.ProductListAction;
import com.shop.controller.action.admin.AdminLoginAction;
import com.shop.controller.action.admin.AdminLogoutAction;
import com.shop.controller.action.admin.AdminOrderSave;
import com.shop.controller.action.admin.AdminProductDetailAction;
import com.shop.controller.action.admin.AdminProductListAction;
import com.shop.controller.action.admin.AdminProductWriteAction;
import com.shop.controller.action.admin.AdminProductWriteFormAction;

import adminorder.AdminOrderAction;


@WebServlet("*.do")
public class shopController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public shopController() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		doAction(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		doAction(request,response);
	}
	
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		String uri = request.getRequestURI();
		String conpath = request.getContextPath();
		String command = uri.substring(conpath.length());
		
		String page = null;
		
		switch(command) {
		//사용자
		
		case "/main.do":
			new IndexAction().execute(request, response);
			page = "index.jsp";
			break;
		case "/productlist.do":
			new ProductListAction().execute(request, response);
			page = "product/productList.jsp";
			break;
		case "/productdetail.do":
			new ProductDetailAction().execute(request, response);
			page = "product/productview.jsp";
			break;
		case "/contract.do":
			page="member/join.jsp";
			break;
		case "/checkUserid.do":
			new CheckUseridAction().execute(request, response);
			break;
		case "/join.do":
			new MemberInsert().execute(request, response);
			response.sendRedirect("main.do");
			break;
		case "/loginform.do":
			page = "member/login.jsp";
			break;
		case "/login.do":
			new LoginAction().execute(request, response);
			response.sendRedirect("main.do");
			break;
		case "/logout.do":
			new LogoutAction().execute(request, response);
			response.sendRedirect("main.do");
			break;
		case "/cartInsert.do":
			new CartInsertAction().execute(request, response);
			response.sendRedirect("cartList.do");
			break;
		case "/cartList.do":
			new CartListAction().execute(request, response);
			break;
		
		case "/cartDelete.do":
			new CartDeleteAction().execute(request, response);
			break;
		case "/orderInsert.do":
			new OrderInsertAction().execute(request, response);
			break;
		case "/orderList.do":
			new OrderListAction().execute(request, response);
			break;
		case "/mypage.do":
			new MypageAction().execute(request, response);
			break;
		case "/orderDetail.do":
			new OrderDetailAction().execute(request, response);
			break;
		case "/orderAll.do":
			new OrderAllAction().execute(request, response);
			break;
		case "":
			
			
		//관리자
		case "/adminlogin.do":
			page = "admin/adminlogin.jsp";
			break;
		case "/adminloginAction.do":
			new AdminLoginAction().execute(request, response);
			page = "admin.do";
			break;
		case "/adminlogout.do":
			new AdminLogoutAction().execute(request, response);
			response.sendRedirect("main.do");
			break;
		case "/admin.do":
			new AdminProductListAction().execute(request, response);
			page = "admin/admin.jsp";
			break;
		case "/admin_product_write_form.do":
			new AdminProductWriteFormAction().execute(request, response);
			page ="admin/product/productWrite.jsp";
			break;
		case "/admin_product_write.do":
			new AdminProductWriteAction().execute(request, response);
			response.sendRedirect("admin.do");
			break;
		case "/productImage.do":
			new AdminProductDetailAction().execute(request, response);
			break;
		case "/adminorder.do":
			new AdminOrderAction().execute(request, response);
			break;
		case "/adminOrderSave.do":
			new AdminOrderSave().execute(request, response);
			break;
		}
		
		if(page != null) {
			request.getRequestDispatcher(page).forward(request, response);
		}

	}
	
	

}
