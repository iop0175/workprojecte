package kr.ac.workproject.model;


import java.sql.Date;

public class Work {
private String workNum;
private String workName;
private String workDetailed;
private String workPerson;
private String workRegion;
private String workField;
private Date workDate;
private String workPay;
private String comNum;
private String comName;
private String keyword;
private String workPlan;
private String workRequirements;
private Date uploadDate;
private String uploadName;
private Long views;
private Long viewsCom;
public Date getUploadDate() {
	return uploadDate;
}
public void setUploadDate(Date uploadDate) {
	this.uploadDate = uploadDate;
}
public String getUploadName() {
	return uploadName;
}
public void setUploadName(String uploadName) {
	this.uploadName = uploadName;
}
public Long getViews() {
	return views;
}
public void setViews(Long views) {
	this.views = views;
}
public Long getViewsCom() {
	return viewsCom;
}
public void setViewsCom(Long viewsCom) {
	this.viewsCom = viewsCom;
}
public String getWorkNum() {
	return workNum;
}
public void setWorkNum(String workNum) {
	this.workNum = workNum;
}
public String getWorkName() {
	return workName;
}
public void setWorkName(String workName) {
	this.workName = workName;
}
public String getWorkDetailed() {
	return workDetailed;
}
public void setWorkDetailed(String workDetailed) {
	this.workDetailed = workDetailed;
}
public String getWorkPerson() {
	return workPerson;
}
public void setWorkPerson(String workPerson) {
	this.workPerson = workPerson;
}
public String getWorkRegion() {
	return workRegion;
}
public void setWorkRegion(String workRegion) {
	this.workRegion = workRegion;
}
public String getWorkField() {
	return workField;
}
public void setWorkField(String workField) {
	this.workField = workField;
}

public String getWorkPay() {
	return workPay;
}
public void setWorkPay(String workPay) {
	this.workPay = workPay;
}
public String getComNum() {
	return comNum;
}
public void setComNum(String comNum) {
	this.comNum = comNum;
}
public String getComName() {
	return comName;
}
public void setComName(String comName) {
	this.comName = comName;
}
public String getQuery() {
	String query = "";
	
	if(keyword != null)
		query += "&keyword=" + keyword;
	
	return query;
}
public String getWorkPlan() {
	return workPlan;
}
public void setWorkPlan(String workPlan) {
	this.workPlan = workPlan;
}
public String getWorkRequirements() {
	return workRequirements;
}
public void setWorkRequirements(String workRequirements) {
	this.workRequirements = workRequirements;
}
public Date getWorkDate() {
	return workDate;
}
public void setWorkDate(Date workDate) {
	this.workDate = workDate;
}

}
