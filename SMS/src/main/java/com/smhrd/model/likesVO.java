package com.smhrd.model;

public class likesVO {
	
	private int likes_seq;		// 좋아요 순번
	private String mb_id;		// 유저아이디
	private int rv_seq;			// 게시글 순번
	private int like_check;		// 좋아요 체크
	private int like_date;		// 좋아요 일자
	
	public likesVO() {
		super();
	}
	public likesVO(int likes_seq, String mb_id, int rv_seq, int like_check, int like_date) {
		super();
		this.likes_seq = likes_seq;
		this.mb_id = mb_id;
		this.rv_seq = rv_seq;
		this.like_check = like_check;
		this.like_date = like_date;
	}
	
	// 좋아요 버튼을 누를때 실행
	public likesVO(String mb_id, int rv_seq) {
		super();
		this.mb_id = mb_id;
		this.rv_seq = rv_seq;
	}
	
	// 좋아요에서 리뷰번호만 가져올 객체
	public likesVO(int rv_seq) {
		super();
		this.rv_seq = rv_seq;
	}
	
	
	
	
	public int getLikes_seq() {
		return likes_seq;
	}
	public void setLikes_seq(int likes_seq) {
		this.likes_seq = likes_seq;
	}
	public String getMb_id() {
		return mb_id;
	}
	public void setMb_id(String mb_id) {
		this.mb_id = mb_id;
	}
	public int getRv_seq() {
		return rv_seq;
	}
	public void setRv_seq(int rv_seq) {
		this.rv_seq = rv_seq;
	}
	public int getLike_check() {
		return like_check;
	}
	public void setLike_check(int like_check) {
		this.like_check = like_check;
	}
	public int getLike_date() {
		return like_date;
	}
	public void setLike_date(int like_date) {
		this.like_date = like_date;
	}
	
	
	
}
