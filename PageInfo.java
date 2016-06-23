package com.hp.util;

import java.util.List;

public class PageInfo {
	//请求的Action名；
		private String action;
		
		//数据
		private List list;
		
		//总记录数
		private long recordCount;
		
		//总页数
		private long pageCount;
		
		//当前页号
		private int currentPage=1;
		
		//每页记录数
		private int pageSize=5;
		
		

		public PageInfo() {
			super();
		}

		public PageInfo(String action, int currentPage) {
			super();
			this.action = action;
			this.currentPage = currentPage;
		}

		public String getAction() {
			return action;
		}

		public void setAction(String action) {
			this.action = action;
		}

		public List getList() {
			return list;
		}

		public void setList(List list) {
			this.list = list;
		}

		public long getRecordCount() {
			return recordCount;
		}

		public void setRecordCount(long count) {
			this.recordCount = count;
		}

		public long getPageCount() {
			return pageCount;
		}

		public void setPageCount(long lf) {
			this.pageCount = lf;
		}

		public int getCurrentPage() {
			return currentPage;
		}

		public void setCurrentPage(int currentPage) {
			this.currentPage = currentPage;
		}

		public int getPageSize() {
			return pageSize;
		}

		public void setPageSize(int pageSize) {
			this.pageSize = pageSize;
	}

}
