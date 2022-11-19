package com.shop.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.shop.dto.BoardVO;
import com.shop.utility.DBManager;

public class BoardDAO {
	private BoardDAO() {
	}
	private static BoardDAO instance = new BoardDAO();

	public static BoardDAO getInstance() {
		return instance;
	}

	public List<BoardVO> selectAllBoard() {

		List<BoardVO> list = new ArrayList<BoardVO>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = "select * from board order by num desc";

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				BoardVO bvo = new BoardVO();
				bvo.setNum(rs.getInt("num"));
				bvo.setName(rs.getNString("name"));
				bvo.setEmail(rs.getNString("email"));
				bvo.setPass(rs.getNString("pass"));
				bvo.setTitle(rs.getNString("title"));
				bvo.setContent(rs.getNString("content"));
				bvo.setReadcount(rs.getInt("readcount"));
				bvo.setWritedate(rs.getTimestamp("writedate"));
				list.add(bvo);
			}
		} catch (Exception e) {
			e.printStackTrace();

		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return list;
	}

	public void insertBoard(BoardVO bvo) {
		String sql = "insert into board(" + "num, name, email, pass, title, content)"
				+ "values(board_seq.nextval, ? ,? ,? ,? ,?) ";

		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}

	}

	public void updateReadCount(String num) {
		String sql = "update board set readcount=readcount+1 where num=?";

		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, num);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}

	public BoardVO selectOneBoardByNum(String num) {
		String sql = "select * from board where num =?";

		BoardVO bvo = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, num);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				bvo = new BoardVO();

				bvo.setNum(rs.getInt("num"));
				bvo.setName(rs.getNString("name"));
				bvo.setEmail(rs.getNString("email"));
				bvo.setPass(rs.getNString("pass"));
				bvo.setTitle(rs.getNString("title"));
				bvo.setContent(rs.getNString("content"));
				bvo.setReadcount(rs.getInt("readcount"));
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return bvo;
	}

	public void uadateBoard(BoardVO bvo) {
		String sql = "update board set name =?, email=?, pass=?, " + "title=?, content=?, where num =?";
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, bvo.getName());
			pstmt.setString(2, bvo.getEmail());
			pstmt.setString(3, bvo.getPass());
			pstmt.setString(4, bvo.getTitle());
			pstmt.setString(5, bvo.getContent());
			pstmt.setInt(6, bvo.getNum());

			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);

		}
	}

	public BoardVO checkPassWord(String pass, String num) {
		String sql = "select * from  board where pass =? and num=?";
		BoardVO bvo = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pass);
			pstmt.setString(2, num);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				bvo = new BoardVO();

				bvo.setNum(rs.getInt("num"));
				bvo.setName(rs.getNString("name"));
				bvo.setEmail(rs.getNString("email"));
				bvo.setPass(rs.getNString("pass"));
				bvo.setTitle(rs.getNString("title"));
				bvo.setContent(rs.getNString("content"));
				bvo.setReadcount(rs.getInt("readcount"));
				bvo.setWritedate(rs.getTimestamp("writedate"));
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return bvo;
	}

	public void deleteBoard(String num) {
		String sql = "delete board where num=?";

		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, num);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
