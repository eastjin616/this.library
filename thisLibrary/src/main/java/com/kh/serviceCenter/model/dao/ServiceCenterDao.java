package com.kh.serviceCenter.model.dao;

import static com.kh.common.JDBCTemplate. *;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.kh.serviceCenter.model.vo.serviceCenter;

public class ServiceCenterDao {

	private Properties prop = new Properties();
	
	public ServiceCenterDao() {
		// 실제론 src폴더에 만들었지만 WebContent에 있는 WEB-INF에 있음
		// 그중 MemberDao가 가지고있는 class의 소스
		String filePath = ServiceCenterDao.class.getResource("/db/sql/serviceCenter.xml").getPath();

		try {
			// 4. dao, xml 연결하기 -> 기본생성자!!!!!!!!!!!!
			prop.loadFromXML(new FileInputStream(filePath)); // 파일을 읽는다!
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	
	
	public int insertInquiry(Connection conn,serviceCenter sc) {
		
		
		// insert문 =-> 처리된 행수 => 트랜잭션 처리 해야한다. (커밋을 해야한다.)
				int result = 0;

				PreparedStatement pstmt = null;
				String sql = prop.getProperty("insertInquiry");
				try {
					pstmt = conn.prepareStatement(sql); // 미완성된 sql문 이다.
					pstmt.setInt(1, sc.getMemNo());
					pstmt.setString(2, sc.getTitle());
					pstmt.setString(3, sc.getContent());

					result = pstmt.executeUpdate();

				} catch (SQLException e) {
					e.printStackTrace();
				} finally {
					close(pstmt);
				}
				return result;
	}
	
	
	
	
	
}
