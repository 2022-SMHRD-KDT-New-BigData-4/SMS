package com.smhrd.model;

public class restaurantVO {

	private int res_seq;		// 가게번호
	private String res_name;	// 가게이름
	private String res_addr;	// 가게주소
	private String res_tel;		// 가게 전화번호
	private String open_time;	// 오픈시간
	private String close_time;	// 마감시간
	private String rest_day;	// 휴무일
	private String res_pic1;	// 사진1
	private String res_pic2;	// 사진2
	private String res_pic3;	// 사진3
	private int res_lat;		// 위도
	private int res_lng;		// 경도
	
	public restaurantVO() {
		super();
	}
	
	public restaurantVO(int res_seq, String res_name, String res_addr, String res_tel, String open_time,
			String close_time, String rest_day, String res_pic1, String res_pic2, String res_pic3, int res_lat,
			int res_lng) {
		super();
		this.res_seq = res_seq;
		this.res_name = res_name;
		this.res_addr = res_addr;
		this.res_tel = res_tel;
		this.open_time = open_time;
		this.close_time = close_time;
		this.rest_day = rest_day;
		this.res_pic1 = res_pic1;
		this.res_pic2 = res_pic2;
		this.res_pic3 = res_pic3;
		this.res_lat = res_lat;
		this.res_lng = res_lng;
	}
	
	// 가게이름으로 가게번호 검색하기
	public restaurantVO(String res_name) {
		super();
		this.res_name = res_name;
	}
	
	
	
	








	public int getRes_seq() {
		return res_seq;
	}
	public void setRes_seq(int res_seq) {
		this.res_seq = res_seq;
	}
	public String getRes_name() {
		return res_name;
	}
	public void setRes_name(String res_name) {
		this.res_name = res_name;
	}
	public String getRes_addr() {
		return res_addr;
	}
	public void setRes_addr(String res_addr) {
		this.res_addr = res_addr;
	}
	public String getRes_tel() {
		return res_tel;
	}
	public void setRes_tel(String res_tel) {
		this.res_tel = res_tel;
	}
	public String getOpen_time() {
		return open_time;
	}
	public void setOpen_time(String open_time) {
		this.open_time = open_time;
	}
	public String getClose_time() {
		return close_time;
	}
	public void setClose_time(String close_time) {
		this.close_time = close_time;
	}
	public String getRest_day() {
		return rest_day;
	}
	public void setRest_day(String rest_day) {
		this.rest_day = rest_day;
	}
	public String getRes_pic1() {
		return res_pic1;
	}
	public void setRes_pic1(String res_pic1) {
		this.res_pic1 = res_pic1;
	}
	public String getRes_pic2() {
		return res_pic2;
	}
	public void setRes_pic2(String res_pic2) {
		this.res_pic2 = res_pic2;
	}
	public String getRes_pic3() {
		return res_pic3;
	}
	public void setRes_pic3(String res_pic3) {
		this.res_pic3 = res_pic3;
	}
	public int getRes_lat() {
		return res_lat;
	}
	public void setRes_lat(int res_lat) {
		this.res_lat = res_lat;
	}
	public int getRes_lng() {
		return res_lng;
	}
	public void setRes_lng(int res_lng) {
		this.res_lng = res_lng;
	}
	
	
	
	
}
