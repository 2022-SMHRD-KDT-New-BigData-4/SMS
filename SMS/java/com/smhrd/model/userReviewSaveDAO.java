package com.smhrd.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class userReviewSaveDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getFactory();

	public int userReviewSave(userMapVO idResRv) {
		
		System.out.println("DAO : 유저리뷰세이브 dao성공");
		int result= 0;
		SqlSession sqlsession = sqlSessionFactory.openSession(true);
		//----------------------------------------------------------[
		try {
			//result=session.selectList("userMap");// 아이디값
			//System.out.println("check" + result.get(0).getRes_name());
			System.out.println("유저리뷰세이브dao2 : "+idResRv.getRes_seq());
			result =sqlsession.insert("userReviewSave",idResRv);
			System.out.println("유저리뷰세이브result : "+result);
		} finally {
			sqlsession.close();
		}
		return result;
		
	}

}
