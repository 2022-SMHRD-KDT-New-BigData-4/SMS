package com.smhrd.model;

public class userMapVO {
	
	private String mb_id;
	private int res_seq;
	private int rv_seq;
	
	
	public userMapVO() {
		super();
	}

	public userMapVO(String mB_ID, int res_seq, int rv_seq) {
		this.mb_id = mB_ID;
		this.res_seq = res_seq;
		this.rv_seq = rv_seq;
	}

	public userMapVO(String MB_ID) {
		this.mb_id = MB_ID;
	}
	
	public int getRes_seq() {
		return res_seq;
	}

	public void setRes_seq(int resSeq) {
		this.res_seq = resSeq;
	}

	public int getRv_seq() {
		return rv_seq;
	}

	public void setRvSeq(int rv_seq) {
		this.rv_seq = rv_seq;
	}


	public String getMB_ID() {
		return mb_id;
	}

	public void setMB_ID(String mB_ID) {
		this.mb_id = mB_ID;
	}

}
