package com.aws.board.dto;

public class boardDTO {

	private int seq;            // 게시글 번호
	private String subject;     // 제목
	private String content;		// 내용
	private String writer;		// 작성자
	private String reg_date;	// 작성일자
	private int readCount;		// 조회수
	
	
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getwriter() {
		return writer;
	}
	public void setwriter(String writer) {
		this.writer = writer;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	public int getReadCount() {
		return readCount;
	}
	public void setReadCount(int readCount) {
		this.readCount = readCount;
	}
	
	
	@Override
	public String toString() {
		return "boardDTO [seq=" + seq + ", subject=" + subject + ", content=" + content + ", writer=" + writer
				+ ", reg_date=" + reg_date + ", readCount=" + readCount + "]";
	}
	
	
}

