package com.semi.project.festival.mapper;

import java.util.List; 

import com.semi.project.festival.entity.Festival;

public interface IFestivalMapper {
	
	//시즌별 축제 조회
	List<Festival> getFestival(String season);

	String login(String userId);
	
	//좋아요 목록 조회
	List<Festival> likeList(int likeNum);

	//행정구역별 축제 조회
	List<Festival> getFestivalByArea(String name);
	
	//댓글 조회
	
}
