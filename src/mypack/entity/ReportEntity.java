package mypack.entity;

import java.util.Date;
import java.util.Date.*;

public class ReportEntity {
	
private int patient_id;
	
private String Name;
	
private String report;
	
private Date addedDate;

public ReportEntity(String name, String report, Date addedDate) {
	super();
	Name = name;
	this.report = report;
	this.addedDate = addedDate;
}

public ReportEntity() {
	super();
	// TODO Auto-generated constructor stub
}

public int getPatient_id() {
	return patient_id;
}

public void setPatient_id(int patient_id) {
	this.patient_id = patient_id;
}

public String getName() {
	return Name;
}

public void setName(String name) {
	Name = name;
}

public String getReport() {
	return report;
}

public void setReport(String report) {
	this.report = report;
}

public Date getAddedDate() {
	return addedDate;
}

public void setAddedDate(Date addedDate) {
	this.addedDate = addedDate;
}



}
