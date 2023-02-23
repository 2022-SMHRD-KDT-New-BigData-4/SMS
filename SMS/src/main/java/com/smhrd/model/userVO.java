package com.smhrd.model;

public class userVO {
	
	private String userId;		// 유저id
	private String userPw;		// 유저비밀번호
	private String userName;	// 유저 이름
	private String userNick;	// 유저 닉네임
	
	
	// 로그인 0222
	public userVO(String userId, String userPw) {
		super();
		this.userId = userId;
		this.userPw = userPw;
	}



	// 회원가입 0221
	public userVO(String userId, String userPw, String userName, String userNick) {
		super();
		this.userId = userId;
		this.userPw = userPw;
		this.userName = userName;
		this.userNick = userNick;
	}



	public String getUserId() {
		return userId;
	}



	public void setUserId(String userId) {
		this.userId = userId;
	}



	public String getUserPw() {
		return userPw;
	}



	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}



	public String getUserNick() {
		return userNick;
	}



	public void setUserNick(String userNick) {
		this.userNick = userNick;
	}



	public String getUserName() {
		return userName;
	}



	public void setUserName(String userName) {
		this.userName = userName;
	}




	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
