package com.mvc;

public class Registration {
	
	//define all necessary properties
	private int total = 0;
	private String parentName;
	
	private String childName;
	private String childDOB;
	private String parentEmail;
	private int parentPhoneNo;
	
	private String physicianName;
	private int physicianPhoneNo;
	
	private int noOfShirt;
	private int noOfShort;
	
	//create the getter and setter method for each property
	public String getParentName() {
		return parentName;
	}
	public void setParentName(String parentName) {
		this.parentName = parentName;
	}
	public String getChildName() {
		return childName;
	}
	public void setChildName(String childName) {
		this.childName = childName;
	}
	public String getChildDOB() {
		return childDOB;
	}
	public void setChildDOB(String childDOB) {
		this.childDOB = childDOB;
	}

	public String getParentEmail() {
		return parentEmail;
	}
	public void setParentEmail(String parentEmail) {
		this.parentEmail = parentEmail;
	}

	public int getParentPhoneNo() {
		return parentPhoneNo;
	}
	public void setParentPhoneNo(int parentPhoneNo) {
		this.parentPhoneNo = parentPhoneNo;
	}

	public String getPhysicianName() {
		return physicianName;
	}
	public void setPhysicianName(String physicianName) {
		this.physicianName = physicianName;
	}

	public int getPhysicianPhoneNo() {
		return physicianPhoneNo;
	}
	public void setPhysicianPhoneNo(int physicianPhoneNo) {
		this.physicianPhoneNo = physicianPhoneNo;
	}

	public int getNoOfShirt() {
		return noOfShirt;
	}
	public void setNoOfShirt(int noOfShirt) {
		this.noOfShirt = noOfShirt;
	}

	public int getNoOfShort() {
		return noOfShort;
	}
	public void setNoOfShort(int noOfShort) {
		this.noOfShort = noOfShort;
	}

	//create a method that handle business logic like calculating total.
	//this is later called in the controller class.
	public int calculateTotal (int shirtQty, int shortQty) {
		total = (shirtQty*38) + (shortQty*32);
		return total;
	}
	
}
