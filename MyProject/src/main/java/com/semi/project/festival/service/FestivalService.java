package com.semi.project.festival.service;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.Map;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

import com.semi.project.festival.dto.FtvResponseDTO;
import com.semi.project.festival.dto.ReplyResponseDTO;
import com.semi.project.festival.entity.Festival;
import com.semi.project.festival.entity.FtvLike;
import com.semi.project.festival.mapper.IFestivalMapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Service
@RequiredArgsConstructor
@Slf4j
@PropertySource("classpath:/properties/FestivalApi.properties")
public class FestivalService {

	private final IFestivalMapper mapper;
	
	//properties 작성값 읽어오기
	@Value("${festival.serviceKey}")
	private String serviceKey;
	@Value("${festival.reqUrl}")
	private String reqUrl;
	
	public void festivalpar(String season, int likeNum) {
		log.info("serviceKey: " + serviceKey);
		
	Map<String, String> map = (Map<String, String>) mapper.getFestival(season.trim());
		log.info("좌표 결과: {}", map);
	
	// 요청 헤더 설정
	HttpHeaders headers = new HttpHeaders();
	headers.setContentType(MediaType.APPLICATION_JSON);
	headers.set("Accept", "*/*;q=0.9"); // HTTP_ERROR 방지	
		
	// 쿼리파라미터 방식 = GET
	UriComponents builder = UriComponentsBuilder.fromHttpUrl(reqUrl)
							.queryParam("serviceKey", serviceKey)
							.queryParam("pageNo", "1")
							.queryParam("numOfRows", "100")
							.queryParam("type", "xml")
//							.queryParam("fstvlNm", "")
//							.queryParam("opar", )
//							.queryParam("fstvlStartDate", )
//							.queryParam("fstvlEndDate", )
//							.queryParam("fstvlCo", )
//							.queryParam("mnnstNm", )
//							.queryParam("auspclnsttNm", )
//							.queryParam("suprtlnsttNm", )
//							.queryParam("phoneNumber", )
//							.queryParam("homepageUrl", )
//							.queryParam("relateInfo", )
//							.queryParam("rdnmadr", )
//							.queryParam("lnmadr", )
//							.queryParam("latitude", )
//							.queryParam("longitude", )
//							.queryParam("referenceDate", )
//							.queryParam("instt_code", )
//							.queryParam("instt_nm", )
							.build();
	
	//완성된 쿼리 url
	log.info("url: {}", builder.toString());
			
	//REST 방식의 객체 생성
	RestTemplate template = new RestTemplate();
	//쿼리파라미터(get방식) header내용 HttpEntity에 담기
	HttpEntity<Object> requestEntity = new HttpEntity<>(headers);
		
	try {
		//UriComponents 타입의 값을 URI 객체로 변환. (GET)
		URI uri = new URI(builder.toUriString());
		ResponseEntity<Map> responseEntity
		= template.exchange(uri, HttpMethod.GET, requestEntity, Map.class);
		
		Map<String, Object> responseData = (Map<String, Object>) responseEntity.getBody();
		log.info("요청에 따른 응답 데이터: {}", responseData);
		log.info("body까지 접근: {}", ((Map)responseData.get("response")).get("body"));
	} catch (URISyntaxException e) {
		e.printStackTrace();
	}
	
		
	}
	
	

 
//    public static void main(String[] args) throws IOException {
//        StringBuilder urlBuilder = new StringBuilder("http://api.data.go.kr/openapi/tn_pubr_public_cltur_fstvl_api"); /*URL*/
//        urlBuilder.append("?" + URLEncoder.encode("serviceKey","UTF-8") + "=DrN9%2BwsgemdU5hlHLbTj1V5mw2b4UUlNyWbJ62niWyeR5lXG1rM7worVFEq89XVn0AlWD23nhBUN3wG4sNbIDw%3D%3D"); /*Service Key*/
//        urlBuilder.append("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*페이지 번호*/
//        urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("100", "UTF-8")); /*한 페이지 결과 수*/
//        urlBuilder.append("&" + URLEncoder.encode("type","UTF-8") + "=" + URLEncoder.encode("xml", "UTF-8")); /*XML/JSON 여부*/Q
//        urlBuilder.append("&" + URLEncoder.encode("fstvlNm","UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*축제명*/Q
//        urlBuilder.append("&" + URLEncoder.encode("opar","UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*개최장소*/Q
//        urlBuilder.append("&" + URLEncoder.encode("fstvlStartDate","UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*축제시작일자*/Q
//        urlBuilder.append("&" + URLEncoder.encode("fstvlEndDate","UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*축제종료일자*/Q
//        urlBuilder.append("&" + URLEncoder.encode("fstvlCo","UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*축제내용*/Q
//        urlBuilder.append("&" + URLEncoder.encode("mnnstNm","UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*주관기관명*/
//        urlBuilder.append("&" + URLEncoder.encode("auspcInsttNm","UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*주최기관명*/Q
//        urlBuilder.append("&" + URLEncoder.encode("phoneNumber","UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*전화번호*/Q
//        urlBuilder.append("&" + URLEncoder.encode("homepageUrl","UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*홈페이지주소*/Q
//        urlBuilder.append("&" + URLEncoder.encode("relateInfo","UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*관련정보*/
//        urlBuilder.append("&" + URLEncoder.encode("rdnmadr","UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*소재지도로명주소*/Q
//        urlBuilder.append("&" + URLEncoder.encode("lnmadr","UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*소재지지번주소*/
//        urlBuilder.append("&" + URLEncoder.encode("latitude","UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*위도*/Q
//        urlBuilder.append("&" + URLEncoder.encode("longitude","UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*경도*/Q
//        urlBuilder.append("&" + URLEncoder.encode("referenceDate","UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*데이터기준일자*/
//        urlBuilder.append("&" + URLEncoder.encode("instt_code","UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*제공기관코드*/
//        urlBuilder.append("&" + URLEncoder.encode("instt_nm","UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*제공기관기관명*/
//        URL url = new URL(urlBuilder.toString());
//        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
//        conn.setRequestMethod("GET");
//        conn.setRequestProperty("Content-type", "application/json");
//        System.out.println("Response code: " + conn.getResponseCode());
//        BufferedReader rd;
//        if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
//            rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
//        } else {
//            rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
//        }
//        StringBuilder sb = new StringBuilder();
//        String line;
//        while ((line = rd.readLine()) != null) {
//            sb.append(line);
//        }
//        rd.close();
//        conn.disconnect();
//        System.out.println(sb.toString());
//    }

	public Festival getFestival(String season) {

		return null;
	}

	public FtvLike likeList(int ftvNum) {

		return null;
	}





	
}
