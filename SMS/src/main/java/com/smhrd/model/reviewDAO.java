package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class reviewDAO {
	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getFactory();	
	
	public List<reviewVO> search(followVO vo_fol) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		List<reviewVO> result = sqlSession.selectList("search3", vo_fol );
		
		
		return result;
	}
	
}
