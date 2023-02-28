package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class reviewDAO {
	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getFactory();	
	
	// 게시물 검색하여서 데이터 보여주기
	public List<profilereviewVO> search(followVO vo_fol) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		List<profilereviewVO> result = sqlSession.selectList("search7", vo_fol );
		
		sqlSession.close();
		
		return result;
	}
	
	// 게시글 저장하는 메소드
	public int make(reviewVO vo_rev) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		int cnt = sqlSession.insert("make", vo_rev);
		
		sqlSession.close();
		
		return cnt;
		
	}
	
	// 추천페이지에 게시글들 보여주기, 좋아요 많은 순서로 데이터 가져오기
	public reviewVO show(reviewVO vo_rev) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		reviewVO result = sqlSession.selectOne("show", vo_rev);
		
		sqlSession.close();
		
		return result;
	}
	
	// 추천페이지에 게시글들 카테고리별로 랜덤으로 데이터 가져오기
	public List<reviewVO> show_ct1() {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		List<reviewVO> result = sqlSession.selectList("show1");
		
		sqlSession.close();
		
		return result;
	}
	
	public List<reviewVO> show_ct2() {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		List<reviewVO> result = sqlSession.selectList("show2");
		
		sqlSession.close();
		
		return result;
	}
	
	public List<reviewVO> show_ct3() {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		List<reviewVO> result = sqlSession.selectList("show3");
		
		sqlSession.close();
		
		return result;
	}
	
	public List<reviewVO> show_ct4() {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		List<reviewVO> result = sqlSession.selectList("show4");
		
		sqlSession.close();
		
		return result;
	}
	
	
	
	// 해당 게시물의 데이터만 가져오는 메소드
	public reviewVO reviewOpen(reviewVO vo_rev) {

		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		reviewVO result = sqlSession.selectOne("reviewOpen", vo_rev);
		
		sqlSession.close();
		
		return result;
	}
	
	
	
	
	// 검색창에 검색을 진행 (가게가 존재할때)
	public List<reviewVO> usersearch1(reviewVO vo_rev) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		List<reviewVO> result = sqlSession.selectList("user_search1",vo_rev);

		sqlSession.close();
		
		return result;
	}
	
	// 검색창에 검색을 진행 (가게가 존재할때)
	public List<reviewVO> usersearch2(reviewVO vo_rev) {
			
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		List<reviewVO> result = sqlSession.selectList("user_search2",vo_rev);

		sqlSession.close();
		
		return result;
	}
	
	
	
	
}
