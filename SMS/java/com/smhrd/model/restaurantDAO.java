package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class restaurantDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getFactory();	
	
	// 가게이름을 통해서 가게번호 가져오는 메소드
	public restaurantVO search(restaurantVO vo_res) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		restaurantVO result = sqlSession.selectOne("search5", vo_res);
		
		sqlSession.close();
		
		return result;
		
	}
	
	
	
	
}
