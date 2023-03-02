package com.smhrd.model;

public class reviewpageVO {

	private int rv_seq;			// 등록되는 리뷰 번호
	private String rv_content;	// 리뷰 내용
	private int rv_ratings;		// 리뷰 점수
	private int rv_cnt;			// 리뷰 조회수
	private int rv_likes;		// 좋아요 수
	private String mb_id;		// 작성자 id
	private int res_seq;		// 리뷰와 연동되는 가게의 번호
	private String rv_pic1;		// 사진1
	private String rv_hashtag;	// 해시태그
	private String rv_date;		// 리뷰 작성일자
	private String res_name;	// 가게이름
	private String mb_name;		// 유저 이름
	private String mb_nick;		// 유저 닉네임
	private String mb_profile;	// 프로필글
	private String mb_pic;		// 유저 사진
	
	private int rp_seq;			// 댓글 번호
	private String rp_content;	// 댓글 내용
	private String rp_date;		// 댓글 작성일자
	private int rp_likes;		// 해당 댓글 좋아요수
	private int rp_dislikes;	// 해당 댓글 싫어요수
	
	
	public reviewpageVO(int rv_seq, String rv_content, int rv_ratings, int rv_cnt, int rv_likes, String mb_id,
			int res_seq, String rv_pic1, String rv_hashtag, String rv_date, String res_name, String mb_name,
			String mb_nick, String mb_profile, String mb_pic) {
		super();
		this.rv_seq = rv_seq;
		this.rv_content = rv_content;
		this.rv_ratings = rv_ratings;
		this.rv_cnt = rv_cnt;
		this.rv_likes = rv_likes;
		this.mb_id = mb_id;
		this.res_seq = res_seq;
		this.rv_pic1 = rv_pic1;
		this.rv_hashtag = rv_hashtag;
		this.rv_date = rv_date;
		this.res_name = res_name;
		this.mb_name = mb_name;
		this.mb_nick = mb_nick;
		this.mb_profile = mb_profile;
		this.mb_pic = mb_pic;
	}
	
	
	public reviewpageVO(int rv_seq, String mb_id, String mb_name, String mb_nick, String mb_pic, int rp_seq,
			String rp_content, String rp_date, int rp_likes, int rp_dislikes) {
		super();
		this.rv_seq = rv_seq;
		this.mb_id = mb_id;
		this.mb_name = mb_name;
		this.mb_nick = mb_nick;
		this.mb_pic = mb_pic;
		this.rp_seq = rp_seq;
		this.rp_content = rp_content;
		this.rp_date = rp_date;
		this.rp_likes = rp_likes;
		this.rp_dislikes = rp_dislikes;
	}
	
	
	public reviewpageVO() {
		super();
	}
	
	
	public reviewpageVO(int rv_seq, String rv_content, int rv_ratings, int rv_cnt, int rv_likes, String mb_id,
			int res_seq, String rv_pic1, String rv_hashtag, String rv_date, String res_name, String mb_name,
			String mb_nick, String mb_profile, String mb_pic, int rp_seq, String rp_content, String rp_date,
			int rp_likes, int rp_dislikes) {
		super();
		this.rv_seq = rv_seq;
		this.rv_content = rv_content;
		this.rv_ratings = rv_ratings;
		this.rv_cnt = rv_cnt;
		this.rv_likes = rv_likes;
		this.mb_id = mb_id;
		this.res_seq = res_seq;
		this.rv_pic1 = rv_pic1;
		this.rv_hashtag = rv_hashtag;
		this.rv_date = rv_date;
		this.res_name = res_name;
		this.mb_name = mb_name;
		this.mb_nick = mb_nick;
		this.mb_profile = mb_profile;
		this.mb_pic = mb_pic;
		this.rp_seq = rp_seq;
		this.rp_content = rp_content;
		this.rp_date = rp_date;
		this.rp_likes = rp_likes;
		this.rp_dislikes = rp_dislikes;
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
	public String getRes_name() {
		return res_name;
	}
	public void setRes_name(String res_name) {
		this.res_name = res_name;
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
	public int getRp_seq() {
		return rp_seq;
	}
	public void setRp_seq(int rp_seq) {
		this.rp_seq = rp_seq;
	}
	public String getRp_content() {
		return rp_content;
	}
	public void setRp_content(String rp_content) {
		this.rp_content = rp_content;
	}
	public String getRp_date() {
		return rp_date;
	}
	public void setRp_date(String rp_date) {
		this.rp_date = rp_date;
	}
	public int getRp_likes() {
		return rp_likes;
	}
	public void setRp_likes(int rp_likes) {
		this.rp_likes = rp_likes;
	}
	public int getRp_dislikes() {
		return rp_dislikes;
	}
	public void setRp_dislikes(int rp_dislikes) {
		this.rp_dislikes = rp_dislikes;
	}
	
	
	
	
	
	
}
