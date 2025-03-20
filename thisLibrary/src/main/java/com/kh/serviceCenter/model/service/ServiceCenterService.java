package com.kh.serviceCenter.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.commit;
import static com.kh.common.JDBCTemplate.getConnection;
import static com.kh.common.JDBCTemplate.rollback;

import java.sql.Connection;
import com.kh.serviceCenter.model.dao.ServiceCenterDao;
import com.kh.serviceCenter.model.vo.serviceCenter;



public class ServiceCenterService {

	public int insertInquiry(serviceCenter sc) {
		Connection conn = getConnection();
		
		int result =  new ServiceCenterDao().insertInquiry(conn, sc);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
		
		
		
		
	}
	
}
