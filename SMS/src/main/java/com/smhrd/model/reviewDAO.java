package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class reviewDAO {
	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getFactory();	
	
	// 게시물 검색하여서 데이터 보여주기
	public List<reviewVO> search(followVO vo_fol) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		List<reviewVO> result = sqlSession.selectList("search3", vo_fol );
		
		
		return result;
	}
	
	// 게시글 저장하는 메소드
	public int make(reviewVO vo_rev) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		int cnt = sqlSession.insert("make", vo_rev);
		
		return cnt;
		
	}
	
	
	
	
}
