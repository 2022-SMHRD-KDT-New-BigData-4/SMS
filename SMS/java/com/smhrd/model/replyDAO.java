package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class replyDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getFactory();	
	
	// 댓글 작성하는 메소드
	public int reply(replyVO vo_rep) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		int cnt = sqlSession.insert("reply", vo_rep);
		
		sqlSession.close();
		
		return cnt;
		
	}
	
	// 게시글을 키웠을때(or 작성을 작성하기위한 페이지를 열때)
	
	// 게시물 데이터 가져오는 메소드
	public reviewpageVO reviewer(replyVO vo_rep) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		reviewpageVO result = sqlSession.selectOne("reviewpage", vo_rep);
		
		sqlSession.close();
		
		return result;
		
	}
	
	// 게시물의 댓글데이터 가져오는 메소드
	public List<reviewpageVO> replyer(replyVO vo_rep) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		List<reviewpageVO> result = sqlSession.selectList("replypage", vo_rep);
		
		sqlSession.close();
		
		return result;
		
	}
}
