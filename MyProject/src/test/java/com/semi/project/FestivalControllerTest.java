package com.semi.project;

import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.test.context.web.WebAppConfiguration;

@ExtendWith(SpringExtension.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/db-config.xml", "file:src/main/webapp/WEB-INF/spring/servlet-context.xml"})
@WebAppConfiguration
public class FestivalControllerTest {

}
