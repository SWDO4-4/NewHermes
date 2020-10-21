package com.my.hermes.dao;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.google.gson.JsonElement;
import com.google.gson.JsonParser;
import com.my.hermes.vo.EventVO;

// 네이버 기계번역 (Papago SMT) API 예제
@Service
public class PapagoDAO {

    public static ArrayList<EventVO> trans(ArrayList<EventVO> vo) {
        String clientId = "DLGbtZYf5W46xAn8c74J";//애플리케이션 클라이언트 아이디값";
        String clientSecret = "deXz6J519t";//애플리케이션 클라이언트 시크릿값";
        
        String apiURL = "https://openapi.naver.com/v1/papago/n2mt";
        String title;
        String content;
        String location;
        EventVO list = null;
        ArrayList<EventVO> result = new ArrayList<EventVO>();
        
        for (int i = 0; i < vo.size(); i++) {
        	 try {
                 title = URLEncoder.encode(vo.get(i).getTitle(), "UTF-8");
                 content = URLEncoder.encode(vo.get(i).getContent(), "UTF-8");
                 location = URLEncoder.encode(vo.get(i).getLocation(), "UTF-8");
             } catch (UnsupportedEncodingException e) {
                 throw new RuntimeException("인코딩 실패", e);
             }
        	 list = new EventVO();
             Map<String, String> requestHeaders = new HashMap<>();
             requestHeaders.put("X-Naver-Client-Id", clientId);
             requestHeaders.put("X-Naver-Client-Secret", clientSecret);
             
             

             String responseTitle = post(apiURL, requestHeaders, title);
             String responseContent = post(apiURL, requestHeaders, content);
             String responseLocation = post(apiURL, requestHeaders, location);
             
             list.setTitle(responseTitle);
             list.setContent(responseContent);
             list.setLocation(responseLocation);
             list.setImg(vo.get(i).getImg());
             list.setPeriod(vo.get(i).getPeriod());
             result.add(list);
            
         }
        
		return result;
        	
		}
       

    private static String post(String apiUrl, Map<String, String> requestHeaders, String text){
        HttpURLConnection con = connect(apiUrl);
        String postParams = "source=ja&target=ko&text=" + text; //원본언어: 한국어 (ko) -> 목적언어: 영어 (en)
        try {
            con.setRequestMethod("POST");
            for(Map.Entry<String, String> header :requestHeaders.entrySet()) {
                con.setRequestProperty(header.getKey(), header.getValue());
            }

            con.setDoOutput(true);
            try (DataOutputStream wr = new DataOutputStream(con.getOutputStream())) {
                wr.write(postParams.getBytes());
                wr.flush();
            }

            int responseCode = con.getResponseCode();
            if (responseCode == HttpURLConnection.HTTP_OK) { // 정상 응답
                return readBody(con.getInputStream());
            } else {  // 에러 응답
                return readBody(con.getErrorStream());
            }
        } catch (IOException e) {
            throw new RuntimeException("API 요청과 응답 실패", e);
        } finally {
            con.disconnect();
        }
    }

    private static HttpURLConnection connect(String apiUrl){
        try {
            URL url = new URL(apiUrl);
            return (HttpURLConnection)url.openConnection();
        } catch (MalformedURLException e) {
            throw new RuntimeException("API URL이 잘못되었습니다. : " + apiUrl, e);
        } catch (IOException e) {
            throw new RuntimeException("연결이 실패했습니다. : " + apiUrl, e);
        }
    }

    private static String readBody(InputStream body){
        InputStreamReader streamReader = new InputStreamReader(body);
        
        try (BufferedReader lineReader = new BufferedReader(streamReader)) {
            StringBuilder responseBody = new StringBuilder();

            String line;
            
            while ((line = lineReader.readLine()) != null) {
                responseBody.append(line);
            }
            
            JsonParser parser = new JsonParser();
			JsonElement element = parser.parse(responseBody.toString());
			
			element = element.getAsJsonObject().get("message");
			element = element.getAsJsonObject().get("result");
			element = element.getAsJsonObject().get("translatedText");
			
			
			
            
            return element.toString();
        } catch (IOException e) {
            throw new RuntimeException("API 응답을 읽는데 실패했습니다.", e);
        }
    }
}