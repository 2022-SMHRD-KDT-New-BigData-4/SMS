package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class followDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getFactory();	
	
	public List<followVO> search(followVO vo_fol) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		List<followVO> result = sqlSession.selectList("search1", vo_fol );
		
		
		return result;
	}
	
}