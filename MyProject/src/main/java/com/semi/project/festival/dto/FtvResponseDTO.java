package com.semi.project.festival.dto;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import com.semi.project.festival.entity.Festival;

import lombok.AllArgsConstructor; 
import lombok.Builder;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Setter @Getter @ToString
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class FtvResponseDTO {
	// 필드
	private int ftvNum;
	private String ftvName;

	private String place;
	private String url;

	private String roadAddr;
	private int latitude;
	private int longitude;
	private String endDate;
	private String startDate;


	// 생성자
	public FtvResponseDTO(Festival ftv) {
		super();
		this.ftvNum = ftv.getFtvNum();
		this.ftvName = ftv.getFtvName();
		this.place = ftv.getPlace();
		this.url = ftv.getUrl();
		this.roadAddr = ftv.getRoadAddr();
		this.latitude = ftv.getLatitude();
		this.longitude = ftv.getLongitude();
		this.endDate = makePrettierDateString(ftv.getEndDate());
		this.startDate = makePrettierDateString(ftv.getStartDate());

	}



	//메서드 (같은 패키지에서 열 수 있도록 default, 객체 없이 호출할 수 있도록 static)
	static String makePrettierDateString(LocalDateTime date) {
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		return dtf.format(date);
	}


}
