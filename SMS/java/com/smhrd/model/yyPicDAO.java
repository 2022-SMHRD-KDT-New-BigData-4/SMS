package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class yyPicDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getFactory();	

	
	// 아이디로 프로필 사진 가져오는 메소드
	public List<yyPicVO> yyPic() {
	
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		List<yyPicVO> result = sqlSession.selectList("yyPic");
		
		sqlSession.close();
		
		return result;
	}

	
	
	
}
