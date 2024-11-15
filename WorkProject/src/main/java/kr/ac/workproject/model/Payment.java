package kr.ac.workproject.model;

public class Payment {
	private int pay;
	private int month;
	private String comName;
	private String id;
	private int vipNum;
	public int getPay() {
		return pay;
	}
	public void setPay(int pay) {
		this.pay = pay;
	}
	public int getMonth() {
		return month;
	}
	public void setMonth(int month) {
		this.month = month;
	}
	public String getComName() {
		return comName;
	}
	public void setComName(String comName) {
		this.comName = comName;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getVipNum() {
		return vipNum;
	}
	public void setVipNum(int vipNum) {
		this.vipNum = vipNum;
	}
}
