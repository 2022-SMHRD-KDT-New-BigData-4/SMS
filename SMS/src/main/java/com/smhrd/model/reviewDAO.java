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
	
	// 추천페이지에 게시글들 보여주기, 게시글 번호로 데이터 가져오기
	public reviewVO show(reviewVO vo_rev) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		reviewVO result = sqlSession.selectOne("show", vo_rev);
		
		return result;
	}
	
	
	// 검색창에 검색을 진행 (가게가 존재할때)
	public List<reviewVO> usersearch1(reviewVO vo_rev) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		List<reviewVO> result = sqlSession.selectList("user_search1",vo_rev);

		return result;
	}
	
	// 검색창에 검색을 진행 (가게가 존재할때)
	public List<reviewVO> usersearch2(reviewVO vo_rev) {
			
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		List<reviewVO> result = sqlSession.selectList("user_search2",vo_rev);

		return result;
	}
	
	
	
	
}
