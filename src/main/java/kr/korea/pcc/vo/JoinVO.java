package kr.korea.pcc.vo;

import java.util.Date;

public class JoinVO {
	private int idx;
	private String id;
	private String nicname;
	private String password;
	private String eamil;
	private Date regdate;
	private String ip;
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getNicname() {
		return nicname;
	}
	public void setNicname(String nicname) {
		this.nicname = nicname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEamil() {
		return eamil;
	}
	public void setEamil(String eamil) {
		this.eamil = eamil;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	@Override
	public String toString() {
		return "JoinVO [idx=" + idx + ", id=" + id + ", nicname=" + nicname + ", password=" + password + ", eamil="
				+ eamil + ", regdate=" + regdate + ", ip=" + ip + "]";
	}
	
	
	

	
	
	
}
