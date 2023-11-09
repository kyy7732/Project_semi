package com.semi.project.util.page;

public class PageCreator {

	private static final int BUTTON_NUM = 5;
	private int begin, end;
	private boolean prev, next;
	private Page page;
	
	private int articleTotalCount;
	
	public PageCreator(Page page, int articleTotalCount) {
		this.page = page;
		this.articleTotalCount = articleTotalCount;
		calcDataOfPage();
	}

	private void calcDataOfPage() {
		this.end = (int)Math.ceil(page.getPageNo() / (double)BUTTON_NUM) * BUTTON_NUM;
		this.begin = end - BUTTON_NUM + 1;
		this.prev = begin > 1;
		this.next = (articleTotalCount / page.getAmount()) >= end ? true : false;
		if(!next) {
			this.end = (int) Math.ceil(articleTotalCount / (double)page.getAmount());  
		}
	}
	
	
	
	
}
