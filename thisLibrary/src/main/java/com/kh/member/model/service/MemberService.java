package com.kh.member.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.sql.Connection;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

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
	
	public int naverInsert(String id,String nickname, String email,String moblie) {
		Connection conn = getConnection();
		int result = new MemberDao().naverInsert(conn, id, nickname, email, moblie);
	
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}

//=================================================


}
