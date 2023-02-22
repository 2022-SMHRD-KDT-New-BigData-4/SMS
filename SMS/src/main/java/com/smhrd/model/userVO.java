package com.smhrd.model;

public class userVO {
	
	private String userId;
	private String userPw;
	private String userTel;
	private String userName;
	
	
	
	// 로그인 0222 박영상
	public userVO(String userId, String userPw) {
		super();
		this.userId = userId;
		this.userPw = userPw;
	}



	// 회원가입 0221
	public userVO(String userId, String userPw, String userTel, String userName) {
		super();
		this.userId = userId;
		this.userPw = userPw;
		this.userTel = userTel;
		this.userName = userName;
	}



	private String getUserId() {
		return userId;
	}



	private void setUserId(String userId) {
		this.userId = userId;
	}



	private String getUserPw() {
		return userPw;
	}



	private void setUserPw(String userPw) {
		this.userPw = userPw;
	}



	private String getUserTel() {
		return userTel;
	}



	private void setUserTel(String userTel) {
		this.userTel = userTel;
	}



	private String getUserName() {
		return userName;
	}



	private void setUserName(String userName) {
		this.userName = userName;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
