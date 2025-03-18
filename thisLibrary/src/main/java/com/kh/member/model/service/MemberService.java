package com.kh.member.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.commit;
import static com.kh.common.JDBCTemplate.getConnection;
import static com.kh.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.member.model.dao.MemberDao;
import com.kh.member.model.vo.Attachment;
import com.kh.member.model.vo.Member;

public class MemberService {
	public Member loginMember(String memId, String memPwd) {
		Connection conn = getConnection();
		Member m = new MemberDao().loginMember(conn, memId, memPwd);
		
		close(conn);
		
		return m;
				
	}

	public int insertMember(Member m) {
		Connection conn = getConnection();
		int result = new MemberDao().insertMember(conn, m);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
		
	}
	
//	==========================================
	public int idCheck(String checkId) {
		Connection conn = getConnection();
		int count = new MemberDao().idCheck(conn, checkId);
		close(conn);
		return count;
	}

//=================================================

	public int findpwd(String name, String id, String email) {
		Connection conn = getConnection();
		int result = new MemberDao().findPwd(conn, name,id,email);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		return result;
	}
//=================================================
	public int updatePwd(String id, String newPwd) {
		Connection conn = getConnection();
		int result = new MemberDao().updatePwd(conn, id,newPwd);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		return result;
	}
//=================================================
	
	public String findIdPage(String name, String email) {
		Connection conn = getConnection();
		
		String memberId = new MemberDao().findIdPage(conn, name, email);
		if(memberId.equals(null)) {
			rollback(conn);
		}else {
			commit(conn);
		}
		
		close(conn);
		return memberId;
		
	}
	
	public int insertphoto(Member b, ArrayList<Attachment> list) {

		Connection conn = getConnection();

		int result1 = new MemberDao().insertThBoard(conn, b);

		int result2 = new MemberDao().insertAttachmentList(conn, list);

		if (result2 > 0 && result1 > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}

		return result1 * result2;

	}
	
	
	

}
