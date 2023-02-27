package com.smhrd.model;

public class reviewVO {
	
	private int rv_seq;			// 등록되는 리뷰 번호
	private String rv_content;	// 리뷰 내용
	private int rv_ratings;		// 리뷰 점수
	private int rv_cnt;			// 리뷰 조회수
	private int rv_likes;		// 좋아요 수
	private String mb_id;		// 작성자 id
	private int res_seq;		// 리뷰와 연동되는 가게의 번호
	private String rv_pic1;		// 사진1
	private String rv_pic2;		// 사진2
	private String rv_pic3;		// 사진3
	private String rv_pic4;		// 사진4
	private String rv_pic5;		// 사진4
	private String rv_hashtag;	// 해시태그
	private String rv_date;		// 리뷰 작성일자
	
	public reviewVO() {
		super();
	}
	
	// 작성자의 아이디로 리뷰글들 가져오기 and 작성자아이디로 리뷰글들 검색
	public reviewVO(String mb_id) {
		super();
		this.mb_id = mb_id;
	}

	// 가게이름으로 리뷰글들 검색
	public reviewVO(int res_seq) {
		super();
		this.res_seq = res_seq;
	}
	
	

	// 리뷰(게시글) 등록하기
	public reviewVO(String rv_content, int rv_ratings, String mb_id, int res_seq, String rv_hashtag) {
		super();
		this.rv_content = rv_content;
		this.rv_ratings = rv_ratings;
		this.mb_id = mb_id;
		this.res_seq = res_seq;
		this.rv_hashtag = rv_hashtag;
	}
	



	public reviewVO(int rv_seq, String rv_content, int rv_ratings, int rv_cnt, int rv_likes, String mb_id, int res_seq,
			String rv_pic1, String rv_pic2, String rv_pic3, String rv_pic4, String rv_pic5, String rv_hashtag,
			String rv_date) {
		super();
		this.rv_seq = rv_seq;
		this.rv_content = rv_content;
		this.rv_ratings = rv_ratings;
		this.rv_cnt = rv_cnt;
		this.rv_likes = rv_likes;
		this.mb_id = mb_id;
		this.res_seq = res_seq;
		this.rv_pic1 = rv_pic1;
		this.rv_pic2 = rv_pic2;
		this.rv_pic3 = rv_pic3;
		this.rv_pic4 = rv_pic4;
		this.rv_pic5 = rv_pic5;
		this.rv_hashtag = rv_hashtag;
		this.rv_date = rv_date;
	}

	public int getRv_seq() {
		return rv_seq;
	}
	public void setRv_seq(int rv_seq) {
		this.rv_seq = rv_seq;
	}
	public String getContent() {
		return rv_content;
	}
	public void setContent(String rv_content) {
		this.rv_content = rv_content;
	}
	public int getRv_ratings() {
		return rv_ratings;
	}
	public void setRv_ratings(int rv_ratings) {
		this.rv_ratings = rv_ratings;
	}
	public int getRv_cnt() {
		return rv_cnt;
	}
	public void setRv_cnt(int rv_cnt) {
		this.rv_cnt = rv_cnt;
	}
	public int getRv_likes() {
		return rv_likes;
	}
	public void setRv_likes(int rv_likes) {
		this.rv_likes = rv_likes;
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
