package com.semi.project.festival.mapper;

import java.util.List; 

import com.semi.project.festival.entity.Festival;

public interface IFestivalMapper {
	
	//시즌별 축제 조회
	List<Festival> getFestival(String season);
	
	//좋아요 목록 조회
	List<Festival> likeList(int likeNum);
	
	//댓글 조회
	
}
