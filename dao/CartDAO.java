package com.shop.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.shop.dto.CartVO;
import com.shop.dto.ProductVO;
import com.shop.utility.DBManager;

public class CartDAO {

	private static CartDAO instance = new CartDAO();
	private CartDAO() {}
	
	public static CartDAO getInstance() {
		return instance;
	}
	
	public void insertCart(CartVO cvo) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		String sql = "insert into cart "
				+ "(cseq,id,pseq,quantity) "
				+ "values(cseq_seq.nextval,?,?,?)";
		
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, cvo.getId());
			pstmt.setInt(2, cvo.getPseq());
			pstmt.setInt(3, cvo.getQuantity());
			pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}

	}
	
	public List<CartVO> listCart(String id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql="select * from cart_view where id = ? order by cseq desc";
		
		List<CartVO> list = new ArrayList<CartVO>();
		
		CartVO clist = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				clist = new CartVO();
				clist.setCseq(rs.getInt("cseq"));
				clist.setId(rs.getString("id"));
				clist.setPseq(rs.getInt("pseq"));
				clist.setMname(rs.getString("mname"));
				clist.setPname(rs.getString("pname"));
				clist.setQuantity(rs.getInt("quantity"));
				clist.setIndate(rs.getString("indate").substring(0,10));
				clist.setPrice2(rs.getInt("price2"));
				
				list.add(clist);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, rs);
		}
		return list;
	}
	
	public void deleteCart(int cseq) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		String sql="delete cart where cseq=?";
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, cseq);
			pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
	}
	
}
