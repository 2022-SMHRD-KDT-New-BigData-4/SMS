package com.smhrd.model;

public class userMapVO {
	
	private String mb_id;
	private int res_seq;
	private int rv_seq;
	
	public userMapVO(String mb_id) {
		super();
		this.mb_id = mb_id;
	}

	public userMapVO() {
		super();
	}
	
	public userMapVO(String mb_id, int res_seq, int rv_seq) {
		super();
		this.mb_id = mb_id;
		this.res_seq = res_seq;
		this.rv_seq = rv_seq;
	}
	
	
	public String getMb_id() {
		return mb_id;
	}
	public void setMb_id(String mb_id) {
		this.mb_id = mb_id;
	}
	public int getRes_seq() {
		return res_seq;
	}
	public void setRes_seq(int res_seq) {
		this.res_seq = res_seq;
	}
	public int getRv_seq() {
		return rv_seq;
	}
	public void setRv_seq(int rv_seq) {
		this.rv_seq = rv_seq;
	}
	
	

}
