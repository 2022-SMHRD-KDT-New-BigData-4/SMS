package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class followDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getFactory();	
	
	// 로그인한 유저가 팔로우한 유저의 게시물을 가져오기 위한 메소드
	public List<followVO> search(followVO vo_fol) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		List<followVO> result = sqlSession.selectList("search1", vo_fol );
		
		sqlSession.close();
		
		return result;
	}
	
	// 로그인한 유저가 해당 게시글의 유저를 팔로우하기 위한 메소드
	public int insert(followVO vo_fol) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		int cnt = sqlSession.insert("insert_follow", vo_fol);
		
		sqlSession.close();
		
		return cnt;
	}
	
	// 로그인한 유저가 해당 게시글의 유저를 팔로우 해제하기 위한 메소드
	public int delete(followVO vo_fol) {

		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		int cnt = sqlSession.insert("", vo_fol);
		
		sqlSession.close();
		
		return cnt;
	}
	
	
}