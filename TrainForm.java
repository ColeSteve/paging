package com.hp.web.form;

public class TrainForm {
	private String id ;//主键ID
	private String number;
	private String startStation;//起始站
	private String startTime;//出发时间
	private String entireJourney;
	private String entireTime;
	private String arriveStation;
	private String arriveTime;
	private String hardPrice;
	private String softAbove;
	private String softBelow;
	private String hardAbove;
	private String hardMiddle;
	private String hardBelow;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getStartStation() {
		return startStation;
	}
	public void setStartStation(String startStation) {
		this.startStation = startStation;
	}
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public String getEntireJourney() {
		return entireJourney;
	}
	public void setEntireJourney(String entireJourney) {
		this.entireJourney = entireJourney;
	}
	public String getEntireTime() {
		return entireTime;
	}
	public void setEntireTime(String entireTime) {
		this.entireTime = entireTime;
	}
	public String getArriveStation() {
		return arriveStation;
	}
	public void setArriveStation(String arriveStation) {
		this.arriveStation = arriveStation;
	}
	public String getArriveTime() {
		return arriveTime;
	}
	public void setArriveTime(String arriveTime) {
		this.arriveTime = arriveTime;
	}
	public String getHardPrice() {
		return hardPrice;
	}
	public void setHardPrice(String hardPrice) {
		this.hardPrice = hardPrice;
	}
	public String getSoftAbove() {
		return softAbove;
	}
	public void setSoftAbove(String softAbove) {
		this.softAbove = softAbove;
	}
	public String getSoftBelow() {
		return softBelow;
	}
	public void setSoftBelow(String softBelow) {
		this.softBelow = softBelow;
	}
	public String getHardAbove() {
		return hardAbove;
	}
	public void setHardAbove(String hardAbove) {
		this.hardAbove = hardAbove;
	}
	public String getHardMiddle() {
		return hardMiddle;
	}
	public void setHardMiddle(String hardMiddle) {
		this.hardMiddle = hardMiddle;
	}
	public String getHardBelow() {
		return hardBelow;
	}
	public void setHardBelow(String hardBelow) {
		this.hardBelow = hardBelow;
	}
	
	
    private int pageNo=1;//用于分页查询，表示当前页数
	public int getPageNo() {
		return pageNo;
	}
	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}
    
  
	

}
