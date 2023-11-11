package com.semi.project.util.page;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter @Setter @ToString
public class Page {

	private int pageNo;
	private int amount;
	private int begin, end;
	
	private String keyword;
	private String Condition;
	
	private int ftvNum;  // 추가된 부분

	
	public Page() {
		this.pageNo = 1;
		this.amount = 5;
	}
	
	public void setPageNo(int pageNo) {
		if(pageNo < 1 || pageNo > Integer.MAX_VALUE) {
			this.pageNo = 1;
			return;
		}
		this.pageNo = pageNo;
	}
	
	public void setAmount(int amount) {
		if(amount < 5 || amount > 30 || amount % 5 != 0) {
			this.amount = 5;
			return;
		}
		this.amount = amount;
	}
	
	public int getPageStart() {
		return (pageNo - 1) * amount;
	}
	
	public int getPageEnd() {
		return pageNo * amount;
	}
	
	
}
