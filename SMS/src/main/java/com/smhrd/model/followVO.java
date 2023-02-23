package com.smhrd.model;

public class followVO {

	private int fr_req;
	private String follower; 
	private String followee; 
	private String date;
	
	
	public followVO() {
		
	}
	
	
	public followVO(String follower) {
		super();
		this.follower = follower;
	}
	
	
	public followVO(int fr_req, String follower, String followee, String date) {
		super();
		this.fr_req = fr_req;
		this.follower = follower;
		this.followee = followee;
		this.date = date;
	}
	
	
	
	
	
	
	
	


	public String getFollower() {
		return follower;
	}
	public void setFollower(String follower) {
		this.follower = follower;
	}
	public String getFollowee() {
		return followee;
	}
	public void setFollowee(String followee) {
		this.followee = followee;
	}
	public int getFr_req() {
		return fr_req;
	}
	public void setFr_req(int fr_req) {
		this.fr_req = fr_req;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
}
