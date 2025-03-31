package com.kh.scvote.model.service;

import java.sql.Connection;

import com.kh.scvote.model.dao.scNoticeDao;
import com.kh.scvote.model.vo.scNoticeVO;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import com.kh.board.model.dao.BoardDao;
import com.kh.board.model.vo.Board;
import com.kh.common.model.vo.PageInfo;
import com.kh.vote.model.vo.Vote;



public class scNoticeService {

	
	
	public int insertNotice( scNoticeVO notice) {
		Connection conn = getConnection();
		
		int result = new scNoticeDao().insertNotice(conn , notice);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;		
	}
	
	public ArrayList<scNoticeVO> selectNoticeList() {
	    Connection conn = getConnection();
	    ArrayList<scNoticeVO> list = new scNoticeDao().selectNoticeList(conn);
	    close(conn);
	    return list;
	}

	
}
