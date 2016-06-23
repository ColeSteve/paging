package com.hp.util;

public class PageBean {
	private int pageNo;// 当前页面数
	private boolean firstPage;// 是否是第一页
	private boolean lastPage;// 是否是最后一页
	private int sumPage;// 总页数
	private int pageSize;// 每页显示的记录数
	private int totalResult;// 总记录数
	private int offset;//记录数偏移量

	public int getOffset() {
		offset=(pageNo-1)*pageSize;
		return offset;
	}

	public void setOffset(int offset) {
		this.offset = offset;
	}

	public void setSumPage(int sumPage) {
		this.sumPage = sumPage;
	}

	public int getSumPage() {
		return sumPage;
	}

	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;

	}

	public int getPageNo() {
		return pageNo;
	}

	public void setFirstPage(boolean firstPage) {
		this.firstPage = firstPage;

	}

	public boolean getFirstPage() {
		return firstPage;
	}

	public void setLastPage(boolean lastPage) {
		this.lastPage = lastPage;
	}

	public boolean getLastPage() {
		return lastPage;
	}

	/**
	 * 获得每页的记录数
	 * 
	 * @return int
	 */
	public int getPageSize() {
		return pageSize;
	}

	/**
	 * 设置每页的记录数
	 * 
	 * @param i
	 *            int 记录数
	 */
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getTotalResult() {
		return totalResult;
	}

	public void setTotalResult(int totalResult) {
		this.totalResult = totalResult;
	}

}
