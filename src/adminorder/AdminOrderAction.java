package adminorder;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.controller.action.Command;
import com.shop.dao.OrderDAO;
import com.shop.dto.OrderVO;

public class AdminOrderAction implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		String page = "admin/order/order.jsp";
		
		String mname = "";
		if(request.getParameter("mname") != null) {
			mname = request.getParameter("mname");
		}
		
		OrderDAO orderDAO = OrderDAO.getInstance();
		List<OrderVO> orderList = orderDAO.listOrder(mname);
		
		request.setAttribute("orderList", orderList);
		
		request.getRequestDispatcher(page).forward(request, response);
		
		

	}

}
