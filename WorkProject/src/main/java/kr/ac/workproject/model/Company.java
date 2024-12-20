package kr.ac.workproject.model;

import java.sql.Date;

public class Company {
private String comnum;
private String comname;
private String comjob;
private String comregion;
private String ceoname;
private Long combrn;
private Date comdate;
private String stock;
private String comLogo;
private String comtitle;
private int cityCount;
private String id;
private int vipNum;
private String info;
private String page;
public String getInfo() {
	return info;
}
public void setInfo(String info) {
	this.info = info;
}
public String getPage() {
	return page;
}
public void setPage(String page) {
	this.page = page;
}
public String getComnum() {
	return comnum;
}
public void setComnum(String comnum) {
	this.comnum = comnum;
}
public String getComname() {
	return comname;
}
public void setComname(String comname) {
	this.comname = comname;
}
public String getComjob() {
	return comjob;
}
public void setComjob(String comjob) {
	this.comjob = comjob;
}
public String getComregion() {
	return comregion;
}
public void setComregion(String comregion) {
	this.comregion = comregion;
}
public String getCeoname() {
	return ceoname;
}
public void setCeoname(String ceoname) {
	this.ceoname = ceoname;
}
public Long getCombrn() {
	return combrn;
}
public void setCombrn(Long combrn) {
	this.combrn = combrn;
}
public Date getComdate() {
	return comdate;
}
public void setComdate(Date comdate) {
	this.comdate = comdate;
}
public String getStock() {
	return stock;
}
public void setStock(String stock) {
	this.stock = stock;
}
public String getComtitle() {
	return comtitle;
}
public void setComtitle(String comtitle) {
	this.comtitle = comtitle;
}
public int getCityCount() {
	return cityCount;
}
public void setCityCount(int cityCount) {
	this.cityCount = cityCount;
}
public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public String getComLogo() {
	return comLogo;
}
public void setComLogo(String comLogo) {
	this.comLogo = comLogo;
}
public int getVipNum() {
	return vipNum;
}
public void setVipNum(int vipNum) {
	this.vipNum = vipNum;
}


}
