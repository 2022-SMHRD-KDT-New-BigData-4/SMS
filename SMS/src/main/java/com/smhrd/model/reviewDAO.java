package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class reviewDAO {
	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getFactory();	
	
	public List<reviewVO> search(reviewVO vo_rev) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		List<reviewVO> result = sqlSession.selectList("search2", vo_rev );
		
		
		return result;
	}
	
}
