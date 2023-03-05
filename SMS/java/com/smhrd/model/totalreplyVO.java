package com.smhrd.model;

	public class totalreplyVO {

	   private int rp_seq;         // 댓글 번호
	   private int rv_seq;         // 댓글이 달리는 게시글번호
	   private String rp_content;   // 댓글 내용
	   private String rp_date;      // 댓글 작성일자
	   private String mb_id;      // 댓글러 아이디
	   private int rp_likes;      // 해당 댓글 좋아요수
	   private int rp_dislikes;   // 해당 댓글 싫어요수
	   private String mb_name;      // 댓글러 이름
	   private String mb_nick;      // 댓글러 닉네임
	   private String mb_pic;      // 댓글러 사진
	   
	   public totalreplyVO() {
	      super();
	   }
	   
	   public totalreplyVO(int rp_seq, int rv_seq, String rp_content, String rp_date, String mb_id, int rp_likes,
	         int rp_dislikes, String mb_name, String mb_nick, String mb_pic) {
	      super();
	      this.rp_seq = rp_seq;
	      this.rv_seq = rv_seq;
	      this.rp_content = rp_content;
	      this.rp_date = rp_date;
	      this.mb_id = mb_id;
	      this.rp_likes = rp_likes;
	      this.rp_dislikes = rp_dislikes;
	      this.mb_name = mb_name;
	      this.mb_nick = mb_nick;
	      this.mb_pic = mb_pic;
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
	   public String getMb_pic() {
	      return mb_pic;
	   }
	   public void setMb_pic(String mb_pic) {
	      this.mb_pic = mb_pic;
	   }
	   
	   
	   
	}


