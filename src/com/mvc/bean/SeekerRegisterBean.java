package com.mvc.bean;

import java.io.InputStream;

//import java.sql.Blob;

public class SeekerRegisterBean {
	private String jobSeekerId;
	private String name;
	private String password;
	private String address;
	private String emailId;
	private String educationQualification;
	private String mobileNumber;
	private String preferredLocation;
	private String skills;
	private String uploadResume;
	private InputStream fileData;

	public String getJobSeekerId() {
		return jobSeekerId;
	}
	public void setJobSeekerId(String jobSeekerId) {
		this.jobSeekerId = jobSeekerId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getEducationQualification() {
		return educationQualification;
	}
	public void setEducationQualification(String educationQualification) {
		this.educationQualification = educationQualification;
	}
	public String getMobileNumber() {
		return mobileNumber;
	}
	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}
	public String getPreferredLocation() {
		return preferredLocation;
	}
	public void setPreferredLocation(String preferredLocation) {
		this.preferredLocation = preferredLocation;
	}
	public String getSkills() {
		return skills;
	}
	public void setSkills(String skills) {
		this.skills = skills;
	}
	public String getUploadResume() {
		return uploadResume;
	}
	public void setUploadResume(String uploadResume) {
		this.uploadResume = uploadResume;
	}
	public InputStream getFileData() {
		return fileData;
	}
	public void setFileData(InputStream fileData) {
		this.fileData = fileData;
	}
	/*public Blob getFileData() {
		return fileData;
	}
	public void setFileData(Blob fileData) {
		this.fileData = fileData;
	}*/

}
