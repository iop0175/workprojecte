package kr.ac.workproject.model;

public class Work {
private String comnum;
private String worknum;
private String workname;
private String needswork;
private Long workpay;
private Long maxpay;
private Long lowpay;
private String comname;
private String keyword;
public String getQuery() {
	String query = "";
	
	if(keyword != null)
		query += "&keyword=" + keyword;
	
	return query;
}
public String getComnum() {
	return comnum;
}
public void setComnum(String comnum) {
	this.comnum = comnum;
}
public String getWorknum() {
	return worknum;
}
public void setWorknum(String worknum) {
	this.worknum = worknum;
}
public String getWorkname() {
	return workname;
}
public void setWorkname(String workname) {
	this.workname = workname;
}
public String getNeedswork() {
	return needswork;
}
public void setNeedswork(String needswork) {
	this.needswork = needswork;
}
public Long getWorkpay() {
	return workpay;
}
public void setWorkpay(Long workpay) {
	this.workpay = workpay;
}
public Long getMaxpay() {
	return maxpay;
}
public void setMaxpay(Long maxpay) {
	this.maxpay = maxpay;
}
public Long getLowpay() {
	return lowpay;
}
public void setLowpay(Long lowpay) {
	this.lowpay = lowpay;
}
public String getComname() {
	return comname;
}
public void setComname(String comname) {
	this.comname = comname;
}
}
