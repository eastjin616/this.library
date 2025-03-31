package com.kh.myPage.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;
import static com.kh.common.JDBCTemplate.*;

import com.kh.myPage.model.vo.FollowVo;


public class FollowDao {

	private Properties prop = new Properties();

	public FollowDao() {
		// 실제론 src폴더에 만들었지만 WebContent에 있는 WEB-INF에 있음
		// 그중 MemberDao가 가지고있는 class의 소스
		String filePath = FollowVo.class.getResource("/db/sql/follow-mapper.xml").getPath();

		try {
			// 4. dao, xml 연결하기 -> 기본생성자!!!!!!!!!!!!
			prop.loadFromXML(new FileInputStream(filePath)); // 파일을 읽는다!
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public int countFollower(Connection conn , int memberId ){
	
		ArrayList<FollowVo> list = new ArrayList<FollowVo>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("countFollower");
		
		try {
			pstmt = conn.prepareStatement(sql);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		
		return list;
		
		
		
	}
	
	
	

}
