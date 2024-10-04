package kr.ac.workproject.model;


import java.time.LocalDate;
import java.sql.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Work {
private String workNum;
private String workName;
private String workDetailed;
private String workPerson;
private String workRegion;
private String workField;
@DateTimeFormat(pattern = "yyyy-MM-dd")
private LocalDate workDate;
private String workPay;
private String comNum;
private String comName;
private String keyword;
private String workPlan;
private String workRequirements;
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

public Date getWorkDateAsDate() {
    return (workDate != null) ? Date.valueOf(workDate) : null;
}

public void setWorkDate(LocalDate workDate) {
    this.workDate = workDate;
}

public LocalDate getWorkDate() {
    return workDate;
}

}
