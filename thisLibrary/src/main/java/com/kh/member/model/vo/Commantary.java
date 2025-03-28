package com.kh.member.model.vo;

public class Commantary {

	
	private int writeNo;
	private int memNo;
	private String content;
	private int rating;
	private String writeDate;
	private String status;
	
	
	
	
	public Commantary(int writeNo, int memNo, String content, int rating, String writeDate, String status) {
		super();
		this.writeNo = writeNo;
		this.memNo = memNo;
		this.content = content;
		this.rating = rating;
		this.writeDate = writeDate;
		this.status = status;
	}
	
	
	
	
	public int getWriteNo() {
		return writeNo;
	}
	public void setWriteNo(int writeNo) {
		this.writeNo = writeNo;
	}
	public int getMemNo() {
		return memNo;
	}
	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	public String getWriteDate() {
		return writeDate;
	}
	public void setWriteDate(String writeDate) {
		this.writeDate = writeDate;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	
	
	
	@Override
	public String toString() {
		return "Commantary [writeNo=" + writeNo + ", memNo=" + memNo + ", content=" + content + ", rating=" + rating
				+ ", writeDate=" + writeDate + ", status=" + status + "]";
	}
	
	
	
	
	
	
	
}
