package com.smhrd.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class userDAO {
	
	// 작업을 진행할 수 있는 Connection 생성! -> 전역변수
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getFactory();
		

	
	public int join(userVO vo) {
		
		// 1. connection 빌려오기
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		// openSession(true) -> 수행하고자 하는 sql에 대하여 commit 작업을 자동으로 진행!

		// 2. SQL 문장 실행 -> 명령어를 메소드의 이름으로 활용!
		// 예외사항! -> selectList(전체) / selectOne(전체 중 일부)
		int cnt = sqlSession.insert("join", vo);

		// 3. 객체 닫기
		sqlSession.close(); // 다른 실행을 위하여 Connection이 반납!

		// 4. 결과값 리턴
		return cnt;
	}
	

	
	
	
	// 로그인을 위한 메소드 생성
	public userVO login(userVO vo) {
		userVO result = null;

		// 1. connection 객체 시작!
		SqlSession session = sqlSessionFactory.openSession(true);
		// 2. sql문장 실행 -> MemberMapper.xml
		// - select() / selecOne() 실행
		// - MemberMapper.xml -> sql문장 어떻게 작성할 것인지!
		try {
			result = session.selectOne("login", vo);
		} finally {
			// 3. connection 객체 닫기!
			session.close();
		}
		// 4. 반환해야 하는 값이 있는지 생각!
		return result;

	}
	
	
	
	// 프로필페이지 이동할때 데이터 가져오는 메소드
	public List<userinfoVO> profile(userVO vo_mem) {
		
		SqlSession sqlsession = sqlSessionFactory.openSession(true);

		List<userinfoVO> result = sqlsession.selectList("profilepage", vo_mem);
		
		sqlsession.close();

		return result;
		
	}
	
	
	
	
	
}
