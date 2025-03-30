package com.kh.book.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.board.model.dao.BoardDao;
import com.kh.board.model.vo.BoardAnswer;
import com.kh.book.model.dao.BookDao;
import com.kh.book.model.vo.BookAnswer;

public class BookService {

	public ArrayList<BookAnswer> selectReplyList(int isbn) {
		Connection conn = getConnection();
		
		ArrayList<BookAnswer> list = new BookDao().selectReplyList(conn, isbn);
		
		close(conn);
		
		return list;
	}

}
