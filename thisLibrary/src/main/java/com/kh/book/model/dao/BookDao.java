package com.kh.book.model.dao;

import static com.kh.common.JDBCTemplate.*;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.board.model.dao.BoardDao;
import com.kh.board.model.vo.BoardAnswer;
import com.kh.book.model.vo.BookAnswer;

public class BookDao {

	private Properties prop = new Properties();
	
	public BookDao() {
		
		try {
			prop.loadFromXML(new FileInputStream(BoardDao.class.getResource("/db/sql/board-mapper.xml").getPath()));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}

	public ArrayList<BookAnswer> selectReplyList(Connection conn, int isbn) {
		ArrayList<BookAnswer> list = new ArrayList<BookAnswer>(); // []
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectReplyList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, isbn);
			
			rset = pstmt.executeQuery();
			while(rset.next()) {
				list.add(new BoardAnswer(rset.getInt("b_answer_no"),
						 		   rset.getInt("mem_no"),
								   rset.getString("nickname"),
								   rset.getString("answer_content"),
								   rset.getString("answer_date")
						));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}
	
}
