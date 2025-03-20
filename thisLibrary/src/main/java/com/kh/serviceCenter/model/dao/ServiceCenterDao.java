package com.kh.serviceCenter.model.dao;

import static com.kh.common.JDBCTemplate.*;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;




import com.kh.serviceCenter.model.vo.serviceCenter;

public class ServiceCenterDao {

	private Properties prop = new Properties();
	
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
