package com.smhrd.model;

public class userMapVO {

	private int res_seq;
	private String res_name;
	private String res_addr;
	private String res_tel;
	private String open_time;
	private String close_time;
	private String rest_day;
	private String parking_yn;
	private String res_pic1;
	private String res_pic2;
	private String res_pic3;
	
	// 지도 오버레이에 표시할 식당데이터
	public userMapVO(int res_seq, String res_name, String res_addr, String res_tel, String open_time, String close_time,
			String res_pic1) {
		this.res_seq = res_seq;
		this.res_name = res_name;
		this.res_addr = res_addr;
		this.res_tel = res_tel;
		this.open_time = open_time;
		this.close_time = close_time;
		this.res_pic1 = res_pic1;
	}
	private int getRes_seq() {
		return res_seq;
	}
	private void setRes_seq(int res_seq) {
		this.res_seq = res_seq;
	}
	private String getRes_name() {
		return res_name;
	}
	private void setRes_name(String res_name) {
		this.res_name = res_name;
	}
	private String getRes_addr() {
		return res_addr;
	}
	private void setRes_addr(String res_addr) {
		this.res_addr = res_addr;
	}
	private String getRes_tel() {
		return res_tel;
	}
	private void setRes_tel(String res_tel) {
		this.res_tel = res_tel;
	}
	private String getOpen_time() {
		return open_time;
	}
	private void setOpen_time(String open_time) {
		this.open_time = open_time;
	}
	private String getClose_time() {
		return close_time;
	}
	private void setClose_time(String close_time) {
		this.close_time = close_time;
	}
	private String getRest_day() {
		return rest_day;
	}
	private void setRest_day(String rest_day) {
		this.rest_day = rest_day;
	}
	private String getParking_yn() {
		return parking_yn;
	}
	private void setParking_yn(String parking_yn) {
		this.parking_yn = parking_yn;
	}
	private String getRes_pic1() {
		return res_pic1;
	}
	private void setRes_pic1(String res_pic1) {
		this.res_pic1 = res_pic1;
	}
	private String getRes_pic2() {
		return res_pic2;
	}
	private void setRes_pic2(String res_pic2) {
		this.res_pic2 = res_pic2;
	}
	private String getRes_pic3() {
		return res_pic3;
	}
	private void setRes_pic3(String res_pic3) {
		this.res_pic3 = res_pic3;
	}
	
	
	
	
	
	
	
	
	
	
}
