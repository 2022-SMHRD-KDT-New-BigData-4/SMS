package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class profileDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getFactory();	

	
	// 아이디로 프로필 사진 가져오는 메소드
	public profileVO pic(profileVO vo_pro) {
	
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		profileVO result = sqlSession.selectOne("profilepic", vo_pro);
		
		return result;
	}
	
	
	// 로그인한 유저가 팔로우한 유저들의 프로필사진 가져오기
	public List<profileVO> pic2(followVO vo_fol) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		List<profileVO> result = sqlSession.selectList("search6", vo_fol);
	
		return result;
	
	}
	
	
	
}
