package com.sharecampus.community.vo;

public class CommunityVO {
	private int communityNum;
	private int memberNum;
	private String communityRegistDate;
	private String communityContents;
	
	public CommunityVO() {;}

	public int getCommunityNum() {
		return communityNum;
	}

	public void setCommunityNum(int communityNum) {
		this.communityNum = communityNum;
	}

	public int getMemberNum() {
		return memberNum;
	}

	public void setMemberNum(int memberNum) {
		this.memberNum = memberNum;
	}

	public String getCommunityRegistDate() {
		return communityRegistDate;
	}

	public void setCommunityRegistDate(String communityRegistDate) {
		this.communityRegistDate = communityRegistDate;
	}

	public String getCommunityContents() {
		return communityContents;
	}

	public void setCommunityContents(String communityContents) {
		this.communityContents = communityContents;
	}

	@Override
	public String toString() {
		return "CommunityVO [communityNum=" + communityNum + ", memberNum=" + memberNum + ", communityRegistDate="
				+ communityRegistDate + ", communityContents=" + communityContents + "]";
	}

	
}
