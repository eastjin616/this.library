package com.kh.myPage.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.myPage.model.dao.FollowDao;
import com.kh.myPage.model.vo.FollowVo;

import static com.kh.common.JDBCTemplate.*;

public class FollowService {

	
	public int getFollowerCount(int memberId) {
		Connection conn = getConnection();
		
		int result1 = new FollowDao().countFollower(conn, memberId);
		int result2 = 1;

		if (at != null) {
//				첨부파일이 존재하면~~
			result2 = new FollowDao().insertAttachment(conn, memberId);
		}
		if (result1 > 0 && result2 > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}

		return result1 * result2;
	    
	    
	    
	    
	    
	    
	    
	    
	    
	}

	
}
