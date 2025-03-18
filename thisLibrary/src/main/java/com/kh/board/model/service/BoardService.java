package com.kh.board.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.board.model.dao.BoardDao;
import com.kh.board.model.vo.Board;

public class BoardService {

	public ArrayList<Board> selectList() {
	
		Connection conn = getConnection();
		
		ArrayList<Board> list = new BoardDao().selectList(conn);
		
		close(conn);
		
		return list;
	}

}
