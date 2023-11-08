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
		// TODO Auto-generated method stub
		
	}
	
	
	
	
}
