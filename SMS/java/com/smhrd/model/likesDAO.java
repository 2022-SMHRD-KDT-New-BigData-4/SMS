package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class likesDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getFactory();	
	
	// 좋아요 누를 때 
	public int likes(likesVO vo_lik) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		int cnt = sqlSession.insert("likes", vo_lik);
		
		sqlSession.close();
		
		return cnt;
		
	}
	
	// 좋아요 취소할 때 
	public int dislikes(likesVO vo_lik) {
			
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		int cnt = sqlSession.insert("dislikes", vo_lik);
		
		sqlSession.close();
		
		return cnt;
			
	}
	
	// 추천창에 좋아요 수가 많은 순서대로 보여주기
	public List<mainVO> rank() {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		List<mainVO> result = sqlSession.selectList("ranking");
		
		sqlSession.close();
		
		return result;
	}
	
	
}
