package com.smhrd.model;

public class profilereviewVO {

	private String mb_id;
	private String mb_profile;
	private String mb_pic;
	private int rv_seq;			// 등록되는 리뷰 번호
	private String rv_content;	// 리뷰 내용
	private int rv_ratings;		// 리뷰 점수
	private int rv_likes;		// 좋아요 수
	private String mb_id1;		// 작성자 id
	private int res_seq;		// 리뷰와 연동되는 가게의 번호
	private String rv_pic1;		// 사진1
	private String rv_pic2;		// 사진2
	private String rv_pic3;		// 사진3
	private String rv_pic4;		// 사진4
	private String rv_pic5;		// 사진4
	private String rv_hashtag;	// 해시태그
	private String rv_date;		// 리뷰 작성일자
	
	public profilereviewVO(String mb_id, String mb_profile, String mb_pic, int rv_seq, String rv_content,
			int rv_ratings, int rv_likes, String mb_id1, int res_seq, String rv_pic1, String rv_pic2,
			String rv_pic3, String rv_pic4, String rv_pic5, String rv_hashtag, String rv_date) {
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
	
	
	
}
