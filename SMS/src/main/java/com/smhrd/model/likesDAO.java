package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class likesDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getFactory();	
	
	// 좋아요 누를 때 
	public int likes(likesVO vo_lik) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		int cnt = sqlSession.insert("likes", vo_lik);
		
		return cnt;
		
	}
	
	// 좋아요 취소할 때 
	public int dislikes(likesVO vo_lik) {
			
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		int cnt = sqlSession.insert("dislikes", vo_lik);
		
		return cnt;
			
		}
	
}
