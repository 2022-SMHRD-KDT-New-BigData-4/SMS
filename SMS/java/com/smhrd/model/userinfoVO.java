package com.smhrd.model;

public class userinfoVO {

	private String mb_id;		// 유저id
	private String mb_pw;		// 유저비밀번호
	private String mb_name;		// 유저 이름
	private String mb_nick;		// 유저 닉네임
	private String mb_joindate;	// 유저 가입일자
	private String mb_type;		// 유저 타입 (사용자? 운영자?)
	private String mb_id1;
	private String mb_profile;
	private String mb_pic;
	
	public userinfoVO() {
		super();
	}
	
	public userinfoVO(String mb_id, String mb_pw, String mb_name, String mb_nick, String mb_joindate, String mb_type,
			String mb_id1, String mb_profile, String mb_pic) {
		super();
		this.mb_id = mb_id;
		this.mb_pw = mb_pw;
		this.mb_name = mb_name;
		this.mb_nick = mb_nick;
		this.mb_joindate = mb_joindate;
		this.mb_type = mb_type;
		this.mb_id1 = mb_id1;
		this.mb_profile = mb_profile;
		this.mb_pic = mb_pic;
	}
	
	
	




	public String getMb_id() {
		return mb_id;
	}
	public void setMb_id(String mb_id) {
		this.mb_id = mb_id;
	}
	public String getMb_pw() {
		return mb_pw;
	}
	public void setMb_pw(String mb_pw) {
		this.mb_pw = mb_pw;
	}
	public String getMb_name() {
		return mb_name;
	}
	public void setMb_name(String mb_name) {
		this.mb_name = mb_name;
	}
	public String getMb_nick() {
		return mb_nick;
	}
	public void setMb_nick(String mb_nick) {
		this.mb_nick = mb_nick;
	}
	public String getMb_joindate() {
		return mb_joindate;
	}
	public void setMb_joindate(String mb_joindate) {
		this.mb_joindate = mb_joindate;
	}
	public String getMb_type() {
		return mb_type;
	}
	public void setMb_type(String mb_type) {
		this.mb_type = mb_type;
	}
	public String getMb_id1() {
		return mb_id1;
	}
	public void setMb_id1(String mb_id1) {
		this.mb_id1 = mb_id1;
	}
	public String getMb_profile() {
		return mb_profile;
	}
	public void setMb_profile(String mb_profile) {
		this.mb_profile = mb_profile;
	}
	public String getMb_pic() {
		return mb_pic;
	}
	public void setMb_pic(String mb_pic) {
		this.mb_pic = mb_pic;
	}
	
	
	
	
}
