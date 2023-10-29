package com.semi.project.festival.entity;

import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Getter @ToString @EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Festival {

	//FESTIVAL TABLE
	private int ftvNum;
	private String ftvName;
	private String hostOrg;
	private int phone;
	private String placee;
	private String url;
	private String ftvContent;
	private String organizerOrg;
	private int seasonNum;
	private int admnArea;
	private String roadAddr;
	private int latitude;
	private int longitude;
	
	//WHEN TABLE
	private String season;	
	private LocalDateTime endDate;
	private LocalDateTime startDate;
	
}
