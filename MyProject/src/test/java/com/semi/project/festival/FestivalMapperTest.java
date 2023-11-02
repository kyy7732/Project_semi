package com.semi.project.festival;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import com.semi.project.festival.mapper.IFestivalMapper;

@ExtendWith(SpringExtension.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/db-config.xml", "file:src/main/webapp/WEB-INF/spring/servlet-context.xml"})
public class FestivalMapperTest {
	
	@Autowired
	private IFestivalMapper mapper;
	

	
	
}
