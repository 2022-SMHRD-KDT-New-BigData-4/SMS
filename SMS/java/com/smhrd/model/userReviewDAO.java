package com.smhrd.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class userReviewDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getFactory();

	public List<reviewVO> userReview(userMapVO vo) {
		
		System.out.println("유저리뷰데이터 DAO : 들어오기 성공");
		System.out.println("유저리뷰dao아이디체크 : "+vo.getMB_ID());
		List<reviewVO> result1= new ArrayList<>();
		SqlSession sqlsession1 = sqlSessionFactory.openSession(true);
		//----------------------------------------------------------[
		try {
			//result=session.selectList("userMap");// 아이디값
			//System.out.println("check" + result.get(0).getRes_name());
			result1 =sqlsession1.selectList("userReview",vo);
			System.out.println("유저 리뷰데이터 : "+ result1.get(0).getRv_seq());
		} finally {
			sqlsession1.close();
		}
		return result1;
		
	}

}
