package kr.korea.pcc.vo;

import java.util.Date;

public class BoardVO {
	private int idx;
	private String subject;
	private String content;
	private String user;
	private Date regdate;
	private int count;
	private int hit;
	private int board_idx;
	private int board_idx_incre;
	private int visible;
	
	
	public int getVisible() {
		return visible;
	}
	public void setVisible(int visible) {
		this.visible = visible;
	}
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
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
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public int getBoard_idx() {
		return board_idx;
	}
	public void setBoard_idx(int board_idx) {
		this.board_idx = board_idx;
	}
	public int getBoard_idx_incre() {
		return board_idx_incre;
	}
	public void setBoard_idx_incre(int board_idx_incre) {
		this.board_idx_incre = board_idx_incre;
	}
	@Override
	public String toString() {
		return "BoardVO [idx=" + idx + ", subject=" + subject + ", content=" + content + ", user=" + user + ", regdate="
				+ regdate + ", count=" + count + ", hit=" + hit + ", board_idx=" + board_idx + ", board_idx_incre="
				+ board_idx_incre + ", visible=" + visible + "]";
	}

	
	
	

	
	
}
