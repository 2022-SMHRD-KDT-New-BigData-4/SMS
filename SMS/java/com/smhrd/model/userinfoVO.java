package com.smhrd.model;

public class userinfoVO {

   private int rv_seq;         // 등록되는 리뷰 번호
   private String rv_pic1;      // 유저 타입 (사용자? 운영자?)
   private String mb_profile;   // 프로필글
   private String mb_pic;      // 유저 사진
   private String reviewer;   // 리뷰어(로그인한 유저)
   private String mb_id;      // 유저id
   private String mb_pw;      // 유저비밀번호
   private String mb_name;      // 유저 이름
   private String mb_nick;      // 유저 닉네임
   private String mb_joindate;   // 유저 가입일자
   private String mb_type;      // 유저 타입 (사용자? 운영자?)
   private String replyer;      // 댓글유저(게시글에 댓글을 달아놓은 유저)
   private String rp_content;   // 댓글내용
   private String mb_pic_1;   // 댓글러 사진
   private String mb_name_1;   // 댓글러 이름
   private String mb_nick_1;   // 댓글러 닉네임
   
   public userinfoVO() {
      super();
   }

   public userinfoVO(int rv_seq, String rv_pic1, String mb_profile, String mb_pic, String reviewer, String mb_id,
         String mb_pw, String mb_name, String mb_nick, String mb_joindate, String mb_type, String replyer,
         String rp_content, String mb_pic_1, String mb_name_1, String mb_nick_1) {
      super();
      this.rv_seq = rv_seq;
      this.rv_pic1 = rv_pic1;
      this.mb_profile = mb_profile;
      this.mb_pic = mb_pic;
      this.reviewer = reviewer;
      this.mb_id = mb_id;
      this.mb_pw = mb_pw;
      this.mb_name = mb_name;
      this.mb_nick = mb_nick;
      this.mb_joindate = mb_joindate;
      this.mb_type = mb_type;
      this.replyer = replyer;
      this.rp_content = rp_content;
      this.mb_pic_1 = mb_pic_1;
      this.mb_name_1 = mb_name_1;
      this.mb_nick_1 = mb_nick_1;
   }




   public int getRv_seq() {
      return rv_seq;
   }

   public void setRv_seq(int rv_seq) {
      this.rv_seq = rv_seq;
   }

   public String getRv_pic1() {
      return rv_pic1;
   }

   public void setRv_pic1(String rv_pic1) {
      this.rv_pic1 = rv_pic1;
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

   public String getReviewer() {
      return reviewer;
   }

   public void setReviewer(String reviewer) {
      this.reviewer = reviewer;
   }

   public String getMb_id() {
      return mb_id;
   }

   public void setMb_id(String mb_id) {
      this.mb_id = mb_id;
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

   public String getReplyer() {
      return replyer;
   }

   public void setReplyer(String replyer) {
      this.replyer = replyer;
   }

   public String getRp_content() {
      return rp_content;
   }

   public void setRp_content(String rp_content) {
      this.rp_content = rp_content;
   }

   public String getMb_pic_1() {
      return mb_pic_1;
   }

   public void setMb_pic_1(String mb_pic_1) {
      this.mb_pic_1 = mb_pic_1;
   }

   public String getMb_name_1() {
      return mb_name_1;
   }

   public void setMb_name_1(String mb_name_1) {
      this.mb_name_1 = mb_name_1;
   }

   public String getMb_nick_1() {
      return mb_nick_1;
   }

   public void setMb_nick_1(String mb_nick_1) {
      this.mb_nick_1 = mb_nick_1;
   }
   
   
   

   
   
   
   
}