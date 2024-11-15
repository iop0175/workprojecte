package kr.ac.workproject.model;

public class Vendor {
	private String vendorNum;
	private String id;
	private String comName;
	private String workNum;
	private String matNum;
	private Long pay;
	private String info;
	public String getVendorNum() {
		return vendorNum;
	}
	public void setVendorNum(String vendorNum) {
		this.vendorNum = vendorNum;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getComName() {
		return comName;
	}
	public void setComName(String comName) {
		this.comName = comName;
	}
	public String getWorkNum() {
		return workNum;
	}
	public void setWorkNum(String workNum) {
		this.workNum = workNum;
	}
	public String getMatNum() {
		return matNum;
	}
	public void setMatNum(String matNum) {
		this.matNum = matNum;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public Long getPay() {
		return pay;
	}
	public void setPay(Long pay) {
		this.pay = pay;
	}
}
