package com.smhrd.model;

public class replyVO {

	private int rp_seq;			// 댓글 번호
	private int rv_seq;			// 댓글이 달리는 게시글번호
	private String rp_content;	// 댓글 내용
	private String rp_date;		// 댓글 작성일자
	private String mb_id;		// 댓글 작성자(로그인유저)
	private int rp_likes;		// 해당 댓글 좋아요수
	private int rp_dislikes;	// 해당 댓글 싫어요수
	
	public replyVO() {
		super();
	}
	
	public replyVO(int rp_seq, int rv_seq, String rp_content, String rp_date, String mb_id, int rp_likes,
			int rp_dislikes) {
		super();
		this.rp_seq = rp_seq;
		this.rv_seq = rv_seq;
		this.rp_content = rp_content;
		this.rp_date = rp_date;
		this.mb_id = mb_id;
		this.rp_likes = rp_likes;
		this.rp_dislikes = rp_dislikes;
	}
	
	// 해당 게시글에 댓글을 작성할때 DB에 보낼 내용들
	public replyVO(int rv_seq, String rp_content, String mb_id) {
		super();
		this.rv_seq = rv_seq;
		this.rp_content = rp_content;
		this.mb_id = mb_id;
	}
	
	






	public int getRp_seq() {
		return rp_seq;
	}
	public void setRp_seq(int rp_seq) {
		this.rp_seq = rp_seq;
	}
	public int getRv_seq() {
		return rv_seq;
	}
	public void setRv_seq(int rv_seq) {
		this.rv_seq = rv_seq;
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
	public String getMb_id() {
		return mb_id;
	}
	public void setMb_id(String mb_id) {
		this.mb_id = mb_id;
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
