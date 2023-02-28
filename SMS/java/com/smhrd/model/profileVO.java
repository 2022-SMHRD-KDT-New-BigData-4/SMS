package com.smhrd.model;

public class profileVO {

	private String mb_id;
	private String mb_profile;
	private String mb_pic;
	
	public profileVO() {
		super();
	}
	
	public profileVO(String mb_id, String mb_profile, String mb_pic) {
		super();
		this.mb_id = mb_id;
		this.mb_profile = mb_profile;
		this.mb_pic = mb_pic;
	}
	
	// 유저아이디로 프로필 사진 가져오기
	public profileVO(String mb_id) {
		super();
		this.mb_id = mb_id;
	}
	
	
	
	
	









	public String getMb_id() {
		return mb_id;
	}
	public void setMb_id(String mb_id) {
		this.mb_id = mb_id;
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
