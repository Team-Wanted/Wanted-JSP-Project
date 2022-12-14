package com.sharecampus.activities.vo;

public class ActivitiesVO {
	
	private int activNum;
	
	public int getActivNum() {
		return activNum;
	}
	public void setActivNum(int activNum) {
		this.activNum = activNum;
	}


	private String activManagerName;
	private String activManagerEmail;
	private String activManagerPhonenum;
	private String activManagerDept;
	private String activStartDate;
	private String activEndDate;
	private String activActivingDate;
	private int activPeople ;
	private String activField;
	private String activArea;
	private String activDept;
	private String activTitle;
	private String activContents;
	private String activUrl;
	private String activThumbnailImgName;
	private String activMainImgName;
	private int activPermission;
	
public int getActivPermission() {
		return activPermission;
	}
	public void setActivPermission(int activPermission) {
		this.activPermission = activPermission;
	}


	//	파일
	private String fileSystemName;
	private String fileOriginalName;
	private int boardNumber;
	
	public String getFileSystemName() {
		return fileSystemName;
	}
	public void setFileSystemName(String fileSystemName) {
		this.fileSystemName = fileSystemName;
	}
	public String getFileOriginalName() {
		return fileOriginalName;
	}
	public void setFileOriginalName(String fileOriginalName) {
		this.fileOriginalName = fileOriginalName;
	}
	public int getBoardNumber() {
		return boardNumber;
	}
	public void setBoardNumber(int boardNumber) {
		this.boardNumber = boardNumber;
	}
	//파일끝
	
	
	public ActivitiesVO() {;}
	
	




	public String getActivManagerName() {
		return activManagerName;
	}


	
	
	@Override
	public String toString() {
		return "ActivitiesVO [activNum=" + activNum + ", activManagerName=" + activManagerName + ", activManagerEmail="
				+ activManagerEmail + ", activManagerPhonenum=" + activManagerPhonenum + ", activManagerDept="
				+ activManagerDept + ", activStartDate=" + activStartDate + ", activEndDate=" + activEndDate
				+ ", activActivingDate=" + activActivingDate + ", activPeople=" + activPeople + ", activField="
				+ activField + ", activArea=" + activArea + ", activDept=" + activDept + ", activTitle=" + activTitle
				+ ", activContents=" + activContents + ", activUrl=" + activUrl + ", activThumbnailImgName="
				+ activThumbnailImgName + ", activMainImgName=" + activMainImgName + ", activPermission="
				+ activPermission + ", fileSystemName=" + fileSystemName + ", fileOriginalName=" + fileOriginalName
				+ ", boardNumber=" + boardNumber + "]";
	}
	public void setActivManagerName(String activManagerName) {
		this.activManagerName = activManagerName;
	}


	public String getActivManagerEmail() {
		return activManagerEmail;
	}


	public void setActivManagerEmail(String activManagerEmail) {
		this.activManagerEmail = activManagerEmail;
	}


	public String getActivManagerPhonenum() {
		return activManagerPhonenum;
	}


	public void setActivManagerPhonenum(String activManagerPhonenum) {
		this.activManagerPhonenum = activManagerPhonenum;
	}


	public String getActivManagerDept() {
		return activManagerDept;
	}


	public void setActivManagerDept(String activManagerDept) {
		this.activManagerDept = activManagerDept;
	}


	public String getActivStartDate() {
		return activStartDate;
	}


	public void setActivStartDate(String activStartDate) {
		this.activStartDate = activStartDate;
	}


	public String getActivEndDate() {
		return activEndDate;
	}


	public void setActivEndDate(String activEndDate) {
		this.activEndDate = activEndDate;
	}


	public String getActivActivingDate() {
		return activActivingDate;
	}


	public void setActivActivingDate(String activActivingDate) {
		this.activActivingDate = activActivingDate;
	}


	public int getActivPeople() {
		return activPeople;
	}


	public void setActivPeople(int activPeople) {
		this.activPeople = activPeople;
	}


	public String getActivField() {
		return activField;
	}


	public void setActivField(String activField) {
		this.activField = activField;
	}

	//분류 ajax
	public String getActivArea() {
		return activArea;
	}


	public void setActivArea(String activArea) {
		this.activArea = activArea;
	}


	public String getActivDept() {
		return activDept;
	}


	public void setActivDept(String activDept) {
		this.activDept = activDept;
	}
	//분류 ajax 끝
	
	
	
	
	public String getActivTitle() {
		return activTitle;
	}


	public void setActivTitle(String activTitle) {
		this.activTitle = activTitle;
	}


	public String getActivContents() {
		return activContents;
	}


	public void setActivContents(String activContents) {
		this.activContents = activContents;
	}


	public String getActivUrl() {
		return activUrl;
	}


	public void setActivUrl(String activUrl) {
		this.activUrl = activUrl;
	}


	public String getActivThumbnailImgName() {
		return activThumbnailImgName;
	}


	public void setActivThumbnailImgName(String activThumbnailImgName) {
		this.activThumbnailImgName = activThumbnailImgName;
	}


	public String getActivMainImgName() {
		return activMainImgName;
	}


	public void setActivMainImgName(String activMainImgName) {
		this.activMainImgName = activMainImgName;
	}
	
	
	
}
