package com.shop.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.shop.dto.MemberVO;
import com.shop.utility.DBManager;

public class MemberDAO {

	private static MemberDAO instance = new MemberDAO();
	private MemberDAO() {}
	public static MemberDAO getInstance() {
		return instance;
	}
	
	public void memberInsert(MemberVO mvo) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		String sql = "insert into member "
				+ "(id,pwd,name,email,zip_num,address1,address2,phone) "
				+ "values (?,?,?,?,?,?,?,?)";
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mvo.getId());
			pstmt.setString(2, mvo.getPwd());
			pstmt.setString(3, mvo.getName());
			pstmt.setString(4, mvo.getEmail());
			pstmt.setString(5, mvo.getZip_num());
			pstmt.setString(6, mvo.getAddress1());
			pstmt.setString(7, mvo.getAddress2());
			pstmt.setString(8, mvo.getPhone());
			pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
	}
	
	
	public int memberIdCheck(String id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql="select * from member where id=?";
		int result=0;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) { 
				result = 1; 
			}else {
				result = -1;
					}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, rs);
		}
		return result;
	}
	
	
	public MemberVO getMember(String id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql="select * from member where id=?";
		
		MemberVO membervo = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) { 
				membervo = new MemberVO();
				membervo.setId(rs.getString("id"));
				membervo.setPwd(rs.getString("pwd"));
				membervo.setName(rs.getString("name"));
				membervo.setEmail(rs.getString("email"));
				membervo.setZip_num(rs.getString("zip_num"));
				membervo.setAddress1(rs.getString("address1"));
				membervo.setAddress2(rs.getString("address2"));
				membervo.setPhone(rs.getString("phone"));
				membervo.setUseyn(rs.getString("useyn"));
				membervo.setIndate(rs.getString("indate").substring(0,10));

			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, rs);
		}
		return membervo;
	}
	
	
	//관리자 id/pwd check
	
	public int adminIdPwdCheck(MemberVO mvo) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql="select * from member where id=? and pwd=?";
		int result=0;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mvo.getId());
			pstmt.setString(2, mvo.getPwd());
			rs = pstmt.executeQuery();
			if(rs.next()) { 
				result = 1; 
			}else {
				result = -1;
					}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, rs);
		}
		return result;
	}
}
