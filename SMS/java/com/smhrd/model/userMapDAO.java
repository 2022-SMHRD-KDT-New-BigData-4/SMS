package com.smhrd.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class userMapDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getFactory();

	public List<restaurantVO> userMap(userMapVO vo) {
		
		System.out.println("DAO : 12312312312311111111");
		List<restaurantVO> result= new ArrayList<>();
		SqlSession sqlsession = sqlSessionFactory.openSession(true);
		//----------------------------------------------------------[
		try {
			//result=session.selectList("userMap");// 아이디값
			//System.out.println("check" + result.get(0).getRes_name());
			result =sqlsession.selectList("userMap",vo);
			System.out.println("check"+ result.get(0).getRes_name());
		} finally {
			sqlsession.close();
		}
		return result;
		
	}

}
