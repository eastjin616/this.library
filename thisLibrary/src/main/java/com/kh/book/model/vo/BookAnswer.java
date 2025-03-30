package com.kh.book.model.vo;

public class BookAnswer {
	private int bookAnswerNo;
	private int isbnNo;
	private String nickName;
	private String answerContent;
	private String answerDate;
	private String status;
	
	public BookAnswer () {}

	public BookAnswer(int bookAnswerNo, int isbnNo, String nickName, String answerContent, String answerDate, String status) {
		super();
		this.bookAnswerNo = bookAnswerNo;
		this.isbnNo = isbnNo;
		this.nickName = nickName;
		this.answerContent = answerContent;
		this.answerDate = answerDate;
		this.status = status;
	}

	public int getBookAnswerNo() {
		return bookAnswerNo;
	}

	public void setBookAnswerNo(int bookAnswerNo) {
		this.bookAnswerNo = bookAnswerNo;
	}

	public int getIsbnNo() {
		return isbnNo;
	}

	public void setIsbnNo(int isbnNo) {
		this.isbnNo = isbnNo;
	}
	
	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getAnswerContent() {
		return answerContent;
	}

	public void setAnswerContent(String answerContent) {
		this.answerContent = answerContent;
	}

	public String getAnswerDate() {
		return answerDate;
	}

	public void setAnswerDate(String answerDate) {
		this.answerDate = answerDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "BookAnswer [bookAnswerNo=" + bookAnswerNo + ", isbnNo=" + isbnNo + ", nickName=" + nickName + ", answerContent=" + answerContent
				+ ", answerDate=" + answerDate + ", status=" + status + "]";
	};
	
}
