package com.smhrd.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class userReviewCancelDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getFactory();

	public int userReviewCancel(userMapVO idResRv1) {
		
		System.out.println("DAO : 유저리뷰딜리트 dao성공");
		int result2= 0;
		SqlSession sqlsession = sqlSessionFactory.openSession(true);
		//----------------------------------------------------------[
		try {
			//result=session.selectList("userMap");// 아이디값
			//System.out.println("check" + result.get(0).getRes_name());
			System.out.println("유저리뷰삭제dao3 : "+idResRv1.getRes_seq());
			result2 =sqlsession.delete("userReviewCancel", idResRv1);
			System.out.println("유저리뷰삭제result : "+result2);
		} finally {
			sqlsession.close();
		}
		return result2;
		
	}

}
