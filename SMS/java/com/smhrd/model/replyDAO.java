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
		
		return cnt;
		
	}
	
	// 댓글 가져오는 메소드
	public List<replyVO> search(replyVO vo_rep) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		List<replyVO> result = sqlSession.selectList("search4", vo_rep);
		
		return result;
		
	}
	
}
