package com.smhrd.model;

public class profilereviewVO {

	private String mb_id;
	private String mb_profile;
	private String mb_pic;
	private int rv_seq; // 등록되는 리뷰 번호
	private String rv_content; // 리뷰 내용
	private int rv_ratings; // 리뷰 점수
	private int rv_likes; // 좋아요 수
	private String mb_id1; // 작성자 id
	private int res_seq; // 리뷰와 연동되는 가게의 번호
	private String rv_pic1; // 사진1
	private String rv_pic2; // 사진2
	private String rv_pic3; // 사진3
	private String rv_pic4; // 사진4
	private String rv_pic5; // 사진4
	private String rv_hashtag; // 해시태그
	private String rv_date; // 리뷰 작성일자
	private String mb_id2; // 유저id
	private String mb_pw; // 유저비밀번호
	private String mb_name; // 유저 이름
	private String mb_nick; // 유저 닉네임
	private String mb_joindate; // 유저 가입일자
	private String mb_type; // 유저 타입 (사용자? 운영자?)
	private int res_seq1; // 가게번호
	private String res_name; // 가게이름
	private String res_addr; // 가게주소
	private String res_tel; // 가게 전화번호
	private String open_time; // 오픈시간
	private String close_time; // 마감시간
	private String rest_day; // 휴무일
	private String res_pic1; // 사진1
	private String res_pic2; // 사진2
	private String res_pic3; // 사진3
	private int res_lat; // 위도
	private int res_lng; // 경도
	
	public profilereviewVO() {
		super();
	}
	
	public profilereviewVO(String mb_id, String mb_profile, String mb_pic, int rv_seq, String rv_content,
			int rv_ratings, int rv_likes, String mb_id1, int res_seq, String rv_pic1, String rv_pic2, String rv_pic3,
			String rv_pic4, String rv_pic5, String rv_hashtag, String rv_date, String mb_id2, String mb_pw,
			String mb_name, String mb_nick, String mb_joindate, String mb_type, int res_seq1, String res_name,
			String res_addr, String res_tel, String open_time, String close_time, String rest_day, String res_pic1,
			String res_pic2, String res_pic3, int res_lat, int res_lng) {
		super();
		this.mb_id = mb_id;
		this.mb_profile = mb_profile;
		this.mb_pic = mb_pic;
		this.rv_seq = rv_seq;
		this.rv_content = rv_content;
		this.rv_ratings = rv_ratings;
		this.rv_likes = rv_likes;
		this.mb_id1 = mb_id1;
		this.res_seq = res_seq;
		this.rv_pic1 = rv_pic1;
		this.rv_pic2 = rv_pic2;
		this.rv_pic3 = rv_pic3;
		this.rv_pic4 = rv_pic4;
		this.rv_pic5 = rv_pic5;
		this.rv_hashtag = rv_hashtag;
		this.rv_date = rv_date;
		this.mb_id2 = mb_id2;
		this.mb_pw = mb_pw;
		this.mb_name = mb_name;
		this.mb_nick = mb_nick;
		this.mb_joindate = mb_joindate;
		this.mb_type = mb_type;
		this.res_seq1 = res_seq1;
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
	public int getRv_seq() {
		return rv_seq;
	}
	public void setRv_seq(int rv_seq) {
		this.rv_seq = rv_seq;
	}
	public String getRv_content() {
		return rv_content;
	}
	public void setRv_content(String rv_content) {
		this.rv_content = rv_content;
	}
	public int getRv_ratings() {
		return rv_ratings;
	}
	public void setRv_ratings(int rv_ratings) {
		this.rv_ratings = rv_ratings;
	}
	public int getRv_likes() {
		return rv_likes;
	}
	public void setRv_likes(int rv_likes) {
		this.rv_likes = rv_likes;
	}
	public String getMb_id1() {
		return mb_id1;
	}
	public void setMb_id1(String mb_id1) {
		this.mb_id1 = mb_id1;
	}
	public int getRes_seq() {
		return res_seq;
	}
	public void setRes_seq(int res_seq) {
		this.res_seq = res_seq;
	}
	public String getRv_pic1() {
		return rv_pic1;
	}
	public void setRv_pic1(String rv_pic1) {
		this.rv_pic1 = rv_pic1;
	}
	public String getRv_pic2() {
		return rv_pic2;
	}
	public void setRv_pic2(String rv_pic2) {
		this.rv_pic2 = rv_pic2;
	}
	public String getRv_pic3() {
		return rv_pic3;
	}
	public void setRv_pic3(String rv_pic3) {
		this.rv_pic3 = rv_pic3;
	}
	public String getRv_pic4() {
		return rv_pic4;
	}
	public void setRv_pic4(String rv_pic4) {
		this.rv_pic4 = rv_pic4;
	}
	public String getRv_pic5() {
		return rv_pic5;
	}
	public void setRv_pic5(String rv_pic5) {
		this.rv_pic5 = rv_pic5;
	}
	public String getRv_hashtag() {
		return rv_hashtag;
	}
	public void setRv_hashtag(String rv_hashtag) {
		this.rv_hashtag = rv_hashtag;
	}
	public String getRv_date() {
		return rv_date;
	}
	public void setRv_date(String rv_date) {
		this.rv_date = rv_date;
	}
	public String getMb_id2() {
		return mb_id2;
	}
	public void setMb_id2(String mb_id2) {
		this.mb_id2 = mb_id2;
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
	public int getRes_seq1() {
		return res_seq1;
	}
	public void setRes_seq1(int res_seq1) {
		this.res_seq1 = res_seq1;
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
