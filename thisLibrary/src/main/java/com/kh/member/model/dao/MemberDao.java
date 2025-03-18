package com.kh.member.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import static com.kh.common.JDBCTemplate.*;

import com.kh.member.model.vo.Member;

public class MemberDao {

	// 2. service, dao 껍데기 파일 만들기 (전역변수로)
	private Properties prop = new Properties(); 
	
	public MemberDao() {
		// 실제론 src폴더에 만들었지만 WebContent에 있는 WEB-INF에 있음
		// 그중 MemberDao가 가지고있는 class의 소스
		String filePath = MemberDao.class.getResource("/db/sql/member-mapper.xml").getPath();
		
		try {
			// 4. dao, xml 연결하기 -> 기본생성자!!!!!!!!!!!!
			prop.loadFromXML(new FileInputStream(filePath)); // 파일을 읽는다!
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public Member loginMember(Connection conn, String memId, String memPwd) {
		Member m = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("loginMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memId);
			pstmt.setString(2, memPwd);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				m = new Member(rset.getInt("mem_no"),
						       rset.getString("mem_name"),
						       rset.getString("mem_id"),
						       rset.getString("mem_pwd"),
						       rset.getString("nickname"),
						       rset.getString("address"),
						       rset.getString("email"),
						       rset.getString("profile"),
						       rset.getString("phone"),
						       rset.getString("status"),
						       rset.getString("sns_key"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		
		return m;
	}

	public int insertMember(Connection conn, Member m) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertMember");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, m.getMemName());
			pstmt.setString(2, m.getMemId());
			pstmt.setString(3, m.getMemPwd());
			pstmt.setString(4, m.getNickname());
			pstmt.setString(5, m.getAddress());
			pstmt.setString(6, m.getEmail());
			pstmt.setString(7, m.getPhone());
			pstmt.setString(8, m.getSnsKey());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}
	
//	==============================================
	public int idCheck(Connection conn, String checkId) {
		//select문 -> resultset => int 
		
		int count =0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("idCheck");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, checkId);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				count = rset.getInt("count");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return count;
	}
	
//	==============================================
	
	public int findPwd(Connection conn, String name, String id, String email) {
		//select문 -> resultset => int 
		
		int result = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("findPwd");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, id);
			pstmt.setString(3, email);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				 result = rset.getInt(1);
				 System.out.println(result);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return result;
		
	}
//	==============================================

	public int updatePwd(Connection conn, String id, String newPwd) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("updatePwd");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, newPwd);
			pstmt.setString(2, id);
			
			result = pstmt.executeUpdate(); 
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}

//	==============================================
	
	public int naverInsert(Connection conn, String id, String nickname, String email, String moblie) {

		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("naverInsert");
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, nickname);
			pstmt.setString(2, email);
			pstmt.setString(3, nickname);
			pstmt.setString(4, id);
			
			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}




//	==============================================

	public String findIdPage(Connection conn, String name, String email) {
		
		String memberId = "";
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("findIdPage");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, email);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				memberId = rset.getString("mem_id");
				System.out.println(memberId);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return memberId;
	}

}

