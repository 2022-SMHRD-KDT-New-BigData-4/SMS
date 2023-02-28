package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class userMapDAO {
	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getFactory();
	
	public List<userMapDAO> userMap() {
		List<userMapDAO> result= null;
		SqlSession session = sqlSessionFactory.openSession(true);
		try {
			result=session.selectList("userMap");// 아이디값
			
		} finally {
			session.close();
		}
		return result;
		
	}
	
		
	
	
	
	
	
	
	
	
	
}
