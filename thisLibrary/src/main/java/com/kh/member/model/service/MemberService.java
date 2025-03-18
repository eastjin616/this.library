package com.kh.member.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.commit;
import static com.kh.common.JDBCTemplate.getConnection;
import static com.kh.common.JDBCTemplate.rollback;

import java.sql.Connection;

import com.kh.member.model.dao.MemberDao;
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
public boolean isExistingMember(String email){
	Connection conn = getConnection();
	console.log(email);
	boolean result = new MemberDao().isExistingMember(conn, email);

<<<<<<< HEAD
	return result;
=======
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
	
	public int findIdPage(String name, String email) {
		Connection conn = getConnection();
		
		int result = new MemberDao().findIdPage(conn, name, email);
		
		
	}
>>>>>>> 6792497bf230a7ba2f0bcf173efdac51a1c69c12

}
